class CreateShoppingListItems < ActiveRecord::Migration[5.1]
  def change
    create_table :shopping_list_items do |t|
      t.integer :shopping_list_id
      t.string :name
      t.decimal :amount
      t.integer :units
      t.boolean :bought, default: false

      t.timestamps
    end
  end
end
