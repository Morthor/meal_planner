class ShoppingList < ApplicationRecord
  has_many :shopping_list_items, dependent: :destroy

  accepts_nested_attributes_for :shopping_list_items, :reject_if => proc { |attributes| attributes['name'].blank? }

  def initialize_list_items
    # initialise items with name, amount, units
    meals = Meal.from_week(year, week_number)
    meals.each do |meal|
      meal.recipe.ingredients_amounts.each do |ingredients_amounts|
        shopping_list_items << ShoppingListItem.new(
          name: ingredients_amounts.ingredient.name,
          amount: ingredients_amounts.amount,
          units: ingredients_amounts.units_before_type_cast
          )
      end
    end
    consolidate_items
  end

  def consolidate_items
    shopping_list_items.each do |item|
      shopping_list_items.each do |item_to_compare|
        if item != item_to_compare
          if item.name == item_to_compare.name && item.units == item_to_compare.units
            item.amount += item_to_compare.amount
            shopping_list_items.delete(item_to_compare)
          end
        end
      end
    end
    shopping_list_items
  end
end
