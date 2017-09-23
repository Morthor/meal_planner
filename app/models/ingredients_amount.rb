class IngredientsAmount < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient

  enum units: [ :grams, :pieces ]

  validates_presence_of :amount
end
