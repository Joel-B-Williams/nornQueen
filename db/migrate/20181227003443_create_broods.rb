class CreateBroods < ActiveRecord::Migration[5.2]
  def change
    create_table :broods do |t|
      t.string :type
      t.integer :min_size
      t.integer :max_size
      t.integer :size
      t.text :profile
      t.integer :points_per_model
      t.string :battlefield_role
      t.integer :roster_id

      t.timestamps
    end
  end
end
