class Broodling < ApplicationRecord
  belongs_to :brood
  belongs_to :roster, through: brood
  has_many :options
  has_many :special_rules, as: :ruleholder
end
