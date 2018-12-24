class CreateSpecialRules < ActiveRecord::Migration[5.2]
  def change
    create_table :special_rules do |t|
      t.integer :ruleholder_id
      t.string :name
      t.string :text

      t.timestamps
    end
  end
end
