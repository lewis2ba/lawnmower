class MowingsController < ApplicationController
  def index
    @mowings = Mowing.all
    render json: @mowings.to_json, status: :ok
  end
end
