class TechniciansController < ApplicationController
  def index
    @technicians = Technician.all
    render json: @technicians.to_json, status: :ok
  end
end
