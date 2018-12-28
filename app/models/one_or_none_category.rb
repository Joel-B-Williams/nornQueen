class OneOrNoneCategory < ApplicationRecord
  belongs_to :brood
  has_many :one_or_none_choices, dependent: :destroy

  validates :name, :brood_id, presence: true
end
