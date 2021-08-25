class ClientsController < ApplicationController
  def index
    clients = Client.all
    render json: clients.as_json
  end

  def create
    client = Client.new(
      name: params[:name],
      visit_id: params[:visit_id],
      goals: params[:goals],
      trials: params[:trials],
    )
    client.save
    render json: client.as_json
  end

  def show
    client = Client.find_by(id: params[:id])
    render json: client.as_json
  end

  def update
    client = Client.find_by(id: params[:id])
    client.name = params[:name] || client.name
    client.visit_id = params[:visit_id] || client.visit_id
    client.goals = params[:goals] || client.goals
    client.trials = params[:trials] || client.trials
    client.save
    render json: client.as_json
  end

  def destroy
    client = Client.find_by(id: params[:id])
    client.destroy
    render json: { message: "Client successfully removed." }
  end
end
