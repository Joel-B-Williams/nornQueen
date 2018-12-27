class Brood < ApplicationRecord
  belongs_to :roster
  has_many :options, dependent: :destroy
  has_many :one_or_none_categories, dependent: :destroy
  has_many :one_or_none_choices, through: :one_or_none_categories, dependent: :destroy
  has_many :special_rules, as: :ruleholder

  validates :roster_id, :max_size, :min_size, :size, :profile, :points_per_model, :battlefield_role, presence: true
end
