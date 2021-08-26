class NotesController < ApplicationController
  def index
    notes = Note.all
    render json: notes.as_json
  end

  def create
    note = Note.new(
      client_id: params[:client_id],
      date: params[:date],
      content: params[:content],
      name: params[:name],
      pronunciations: params[:pronunciations],
      reach: params[:reach],
      metgoal: params[:metgoal],
      needswork: params[:needswork],
    )
    note.save
    render json: note.as_json
  end

  def show
    note = Note.find_by(id: params[:id])
    render json: note.as_json
  end

  # ADD CHECK BOXES
  def update
    note = Note.find_by(id: params[:id])
    note.client_id = params[:client_id] || note.client_id
    note.date = params[:date] || note.date
    note.content = params[:content] || note.content
    note.save
    render json: note.as_json
  end

  def destroy
    note = Note.find_by(id: params[:id])
    note.destroy
    render json: { message: "Note successfully removed." }
  end
end
