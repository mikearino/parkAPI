class Location < ApplicationRecord
  validates :name, :place, :content, presence: true
end
