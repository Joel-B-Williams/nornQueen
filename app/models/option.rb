class Option < ApplicationRecord
  belongs_to :brood, dependent: :destroy
  has_many :special_rules, as: :ruleholder, dependent: :destroy

  validates :name, :points, :optional, :profile, :weapon, :wargear, :brood_id, presence: true
  validate :weapon_or_wargear

  def weapon_or_wargear
    errors.add(:weapon, "Can't be both weapon and wargear") if weapon == wargear
  end
end
