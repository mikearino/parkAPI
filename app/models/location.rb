class Location < ApplicationRecord
has_many :reviews, dependent: :destroy
validates :name, :place, :content, presence: true

scope :rando, -> {order("RANDOM()").limit(1)}

scope :most_popular, -> { select("locations.id, locations.name, locations.place, locations.content, count(reviews.id) as reviews_count")
  .joins(:reviews)
  .group("locations.id")
  .order("reviews_count DESC")
  .limit(1)}

  scope :search, -> (place_parameter) { where("Place like ?", "%#{place_parameter}%")}

end
