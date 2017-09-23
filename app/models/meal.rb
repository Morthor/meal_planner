class Meal < ApplicationRecord
  belongs_to :recipe

  enum kind: [ :lunch, :dinner ]

end
