class CreateJoinTableRecipeIngredient < ActiveRecord::Migration[5.1]
  def change
    create_table "ingredients_amounts" do |t|
      t.integer :recipe_id, null: false
      t.integer :ingredient_id,  null: false
      t.decimal :amount
      t.integer :units
    end
  end
end
