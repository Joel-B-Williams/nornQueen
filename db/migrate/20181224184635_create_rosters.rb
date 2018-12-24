class CreateRosters < ActiveRecord::Migration[5.2]
  def change
    create_table :rosters do |t|
      t.string :name
      t.integer :max_points

      t.timestamps
    end
  end
end
