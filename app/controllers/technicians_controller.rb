class TechniciansController < ApplicationController
  def index
    @technicians = Technician.all
    render json: @technicians.to_json, status: :ok
  end

  def show
    @technician = Technician.find(params[:id])
    render json: @technician.to_json, status: :ok
  end

  def create
    @technician = Technician.new(technician_params)

    if @technician.save
      render json: @technician.to_json
    else
      render json: @technician.errors, status: :unprocessable_entity
    end
  end

  private

  def technician_params
    params.require(:technician).permit(:name)
  end

end
