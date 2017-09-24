class Recipe < ApplicationRecord
  has_many :ingredients, through: :ingredients_amounts
  has_many :ingredients_amounts, dependent: :destroy
  has_many :meals, dependent: :destroy

  accepts_nested_attributes_for :ingredients_amounts, :reject_if => proc { |attributes| attributes['amount'].blank? }
  validates_presence_of :name
end
