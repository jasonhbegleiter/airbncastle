class City < ApplicationRecord
  belongs_to :country
  has_many :castles, dependent: :destroy

  validates :name, uniqueness: true, presence: true
end
