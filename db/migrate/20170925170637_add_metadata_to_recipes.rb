class AddMetadataToRecipes < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :author, :string
    add_column :recipes, :origin, :string
    add_column :recipes, :cook_time, :string
    add_column :recipes, :servings, :integer
  end
end
