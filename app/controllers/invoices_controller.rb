class InvoicesController < ApplicationController
  def index
    @invoices = Invoice.all
    render json: @invoices.to_json, status: :ok
  end

  def show
    @invoice = Invoice.find(params[:id])
    render json: @invoice.to_json, status: :ok
  end

  def create
    @invoice = Invoice.new(invoice_params)

    if @invoice.save
      render json: @invoice.to_json
    else
      render json: @invoice.errors, status: :unprocessable_entity
    end
  end

  private

  def invoice_params
    params.require(:invoice).permit(:invoice_date, :cost, :mowing_id)
  end

end
