class City < ApplicationRecord
  belongs_to :country
  has_many :castles

  validates :name, uniqueness: true, presence: true
end
