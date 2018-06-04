class Castle < ApplicationRecord
  belongs_to :city
  belongs_to :user
  has_many :castle_amenities
  has_many :castle_photos
  has_many :amenities, through: :castle_amenities
  has_many :photos, through: :castle_photos
end
