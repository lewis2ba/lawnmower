class CustomersController < ApplicationController
  def index
    @customers = Customer.all
    render json: @customers.to_json, status: :ok
  end

  def show
    @customer = Customer.find(params[:id])
    render json: @customer.to_json, status: :ok
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      render json: @customer.to_json
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :address, :lawn_size, :technician_id)
  end

end
