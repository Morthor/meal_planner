class CreateShoppingLists < ActiveRecord::Migration[5.1]
  def change
    create_table :shopping_lists do |t|
      t.integer :year
      t.integer :week_number

      t.timestamps
    end
  end
end
