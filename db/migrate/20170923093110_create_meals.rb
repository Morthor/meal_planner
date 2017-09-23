class CreateMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :meals do |t|
      t.date :date
      t.integer :kind
      t.integer :recipe_id,  null: false
      t.timestamps
    end
  end
end
