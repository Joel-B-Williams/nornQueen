class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.string :name
      t.integer :points
      t.boolean :optional
      t.boolean :weapon
      t.boolean :wargear
      t.string :profile
      t.integer :brood_id

      t.timestamps
    end
  end
end
