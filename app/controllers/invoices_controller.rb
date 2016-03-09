class InvoicesController < ApplicationController
  def index
    @invoices = Invoice.all
    render json: @invoices.to_json, status: :ok
  end
end
