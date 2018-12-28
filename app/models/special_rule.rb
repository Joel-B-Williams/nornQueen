class SpecialRule < ApplicationRecord
  belongs_to :ruleholder, polymorphic: true

  validates :ruleholder_id, :text, presence: true
end
