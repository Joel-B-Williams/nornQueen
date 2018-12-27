class Roster < ApplicationRecord
  has_many :broods, dependent: :destroy
  has_many :options, through: :broods, dependent: :destroy

  validates :name, :points, presence: true
end
