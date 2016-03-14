class MowingsController < ApplicationController
  def index
    @mowings = Mowing.all
    render json: @mowings.to_json, status: :ok
  end

  def show
    @mowing = Mowing.find(params[:id])
    render json: @mowing.to_json, status: :ok
  end

  def create
    @mowing = Mowing.new(mowing_params)

    if @mowing.save
      render json: @mowing.to_json
    else
      render json: @mowing.errors, status: :unprocessable_entity
    end
  end

  private

  def mowing_params
    params.require(:mowing).permit(:customer_id,:technician_id, :mow_date)
  end

end
