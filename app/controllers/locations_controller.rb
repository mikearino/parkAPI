class LocationsController < ApplicationController

  def index
    @locations = {"location": "The secret of getting ahead is getting started."}
    json_response(@locations)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status
  end
end
