class Ingredient < ApplicationRecord
  has_many :ingredients, through: :ingredients_amounts
  has_many :ingredients_amounts, dependent: :destroy
  
  validates_presence_of :name

end
