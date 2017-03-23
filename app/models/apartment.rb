class Apartment < ApplicationRecord
  geocoded_by :address
  belongs_to :user
  validates :user, presence: true
  after_validation :geocode
  resourcify
end
