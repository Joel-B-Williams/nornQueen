class CreateOneOrNoneCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :one_or_none_categories do |t|
      t.string :name
      t.integer :brood_id

      t.timestamps
    end
  end
end
