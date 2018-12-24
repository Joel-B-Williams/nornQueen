class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.string :name
      t.integer :points
      t.boolean :optional
      t.string :stats
      t.boolean :weapon
      t.boolean :wargear
      t.boolean :one_or_none
      t.string :group

      t.timestamps
    end
  end
end
