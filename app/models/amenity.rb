class Amenity < ApplicationRecord
  has_many :castles, through: :castle_amenities
  has_many :castle_amenities, dependent: :destroy

  validates :name, uniqueness: true, presence: true
end
