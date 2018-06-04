class Amenity < ApplicationRecord
  has_many :castles, through: :castle_amenities
end
