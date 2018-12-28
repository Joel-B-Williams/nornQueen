class CreateOneOrNoneChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :one_or_none_choices do |t|
      t.string :name
      t.integer :points
      t.integer :category_id

      t.timestamps
    end
  end
end
