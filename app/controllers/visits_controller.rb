class VisitsController < ApplicationController
  def index
    visits = Visit.all
    render json: visits.as_json
  end
end
