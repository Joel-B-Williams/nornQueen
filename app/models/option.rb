class Option < ApplicationRecord
  belongs_to :broodling
  has_many :special_rules, as: :ruleholder
end
