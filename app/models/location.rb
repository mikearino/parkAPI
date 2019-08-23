class Location < ApplicationRecord
  validates :name, :place, :content, presence: true

  scope :search, -> (place_parameter) {where("Place like ?", "%#{place_parameter}%")}
end
