class AddColumnToSpecialRule < ActiveRecord::Migration[5.2]
  def change
    add_column :special_rules, :ruleholder_type, :string
  end
end
