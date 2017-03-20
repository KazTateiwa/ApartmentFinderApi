class Apartment < ApplicationRecord
  geocoded_by :address
  after_validation :geocode
end
