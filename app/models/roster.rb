class Roster < ApplicationRecord
  has_many :broods
  has_many :broodlings, through: :broods
  has_many :options, through: :broodlings
end
