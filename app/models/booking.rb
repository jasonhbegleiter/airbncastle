class Booking < ApplicationRecord
  belongs_to :castle
  belongs_to :user

  validates :price, presence: true
  validates :start_date, presence: true
  validates :no_of_nights, presence: true
  validates :no_confirmed_guests, presence: true
  validates :castle, presence: true
  validates :user, presence: true
end
