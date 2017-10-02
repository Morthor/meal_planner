class Ingredient < ApplicationRecord
  has_many :ingredients, through: :ingredients_amounts
  has_many :ingredients_amounts, dependent: :destroy

  validates_presence_of :name
  validates_uniqueness_of :name

  default_scope { order(name: :asc) }

end
