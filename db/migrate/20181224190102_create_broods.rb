class CreateBroods < ActiveRecord::Migration[5.2]
  def change
    create_table :broods do |t|
      t.integer :roster_id
      t.integer :max_size
      t.integer :min_size

      t.timestamps
    end
  end
end
