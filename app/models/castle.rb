class Castle < ApplicationRecord
  belongs_to :city
  belongs_to :user
  has_many :amenities, through: :castle_amenities
end
