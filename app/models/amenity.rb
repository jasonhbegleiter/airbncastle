class Amenity < ApplicationRecord
  has_many :castles, through: :castle_amenities

  validates :name, uniqueness: true, presence: true
end
