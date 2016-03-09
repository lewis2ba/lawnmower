class CustomersController < ApplicationController
  def index
    @customers = Customer.all
    render json: @customers.to_json, status: :ok
  end
end
