class CreateBroodlings < ActiveRecord::Migration[5.2]
  def change
    create_table :broodlings do |t|
      t.string :name
      t.string :stats
      t.integer :base_points
      t.string :battlefield_role

      t.timestamps
    end
  end
end
