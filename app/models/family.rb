class Family < ApplicationRecord
  has_many :users
  has_many :meals
  has_many :shopping_lists
end
