class CreateFamilies < ActiveRecord::Migration[5.1]
  def change
    create_table :families do |t|
      t.string :description
      t.timestamps
    end

    add_column :meals, :family_id, :integer
    add_column :shopping_lists, :family_id, :integer
  end
end
