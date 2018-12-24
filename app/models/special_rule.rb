class SpecialRule < ApplicationRecord
  belongs_to :ruleholder, polymorphic: true
end
