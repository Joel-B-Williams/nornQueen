class Brood < ApplicationRecord
  belongs_to :roster
  has_many :broodlings
end
