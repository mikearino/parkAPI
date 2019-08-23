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
    @location = Location.create!(location_params)
    json_response(@location, :created)
  end

  def update
    @location = Location.find(params[:id])
    @location.update!(location_params)
      if @location.update!(location_params)
    render status: 200, json: {
      message: "This location has been updated successfully."
    }
  end
end


  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    if @location.destroy!
      render status: 200, json: {
        message: "This location has been destroyed successfully."
      }
  end
end

  private
  def location_params
    params.permit(:name, :place, :content)
  end
end
