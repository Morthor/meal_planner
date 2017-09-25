class FixDecimalColumns < ActiveRecord::Migration[5.1]
  def change
    change_column :ingredients_amounts, :amount, :decimal, precision: 10, scale: 2
    change_column :shopping_list_items, :amount, :decimal, precision: 10, scale: 2
  end
end
