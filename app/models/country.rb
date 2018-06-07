class Country < ApplicationRecord
  has_many :cities, dependent: :destroy

  validates :name, uniqueness: true, presence: true
end
