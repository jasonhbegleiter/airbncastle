class Castle < ApplicationRecord
  belongs_to :city
  belongs_to :user
  has_many :castle_amenities, dependent: :destroy
  has_many :amenities, through: :castle_amenities
  has_many :bookings, dependent: :destroy
  mount_uploader :photo, PhotoUploader
  geocoded_by :address

  validates :name, uniqueness: true, presence: true
  validates :summary, presence: true
  validates :price_per_night, presence: true
  validates :address, presence: true
  validates :no_of_guests, presence: true
  validates :no_of_bedrooms, presence: true
  validates :no_of_bathrooms, presence: true
  validates :address, presence: true

  after_validation :geocode, if: :will_save_change_to_address?
end
