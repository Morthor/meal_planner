class ShoppingListItem < ApplicationRecord
  belongs_to :shopping_list

  enum units: [ :grams, :pieces ]
end
