class LocationsController < ApplicationController

  def index
    @locations = Location.all
    json_response(@locations)
  end

  def show
    @location = Location.find(params[:id])
    json_response(@location)
  end

  def create
    @locations = Location.create(location_params)
    json_response(@location)
  end

  def update
    @location = Location.find(params[:id])
    @location.update(location_params)
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def location_params
    params.permit(:name, :place, :content)
  end
end
