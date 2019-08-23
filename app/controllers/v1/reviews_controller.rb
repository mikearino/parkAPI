class V1::ReviewsController < ApplicationController


  def new
    @location = Location.find(params[:location_id])
    @review = @location.reviews.new
    json_response(@review)
  end

  def create
    @location = Location.find(params[:location_id])
    @review = @location.reviews.create!(review_params)
    json_response(@review, :created)
  end

  def show
    @location = Location.find(params[:location_id])
    @review = @location.reviews.find(params[:id])
    json_response(@review)
  end

  def update
    @location = Location.find(params[:location_id])
    @review = @location.reviews.find(params[:id])
    @review.update!(review_params)
    if @review.update!(review_params)
      render status: 200, json: {
        message: "This review has been updated successfully."
      }
    end
  end

  def destroy
    @location = Location.find(params[:location_id])
    @review = @location.reviews.find(params[:id])
    @review.destroy!
    if @review.destroy!
      render status: 200, json: {
        message: "This review has been destroyed successfully."
      }
    end
  end

  private
  def review_params
    params.permit(:author, :rating, :content_body)
  end

end
