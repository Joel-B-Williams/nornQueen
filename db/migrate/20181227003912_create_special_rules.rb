class CreateSpecialRules < ActiveRecord::Migration[5.2]
  def change
    create_table :special_rules do |t|
      t.string :name
      t.string :text
      t.integer :ruleholder_id

      t.timestamps
    end
  end
end
