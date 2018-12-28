class OneOrNoneChoice < ApplicationRecord
  belongs_to :one_or_none_category
  belongs_to :brood
  has_many :special_rules, as: :ruleholder, dependent: :destroy

  validates :name, :points, :category_id, presence: true
end
