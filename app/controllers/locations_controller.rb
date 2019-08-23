class LocationsController < ApplicationController

  def index
    @locations = {"spot": "I dont' understand why im getting a 500."}
    json_response(@locations)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status
  end
end
