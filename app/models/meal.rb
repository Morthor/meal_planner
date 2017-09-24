class Meal < ApplicationRecord
  belongs_to :recipe
  belongs_to :family

  enum kind: [ :lunch, :dinner ]

  def self.from_week family, year, week_number
    start_of = Meal.start_of_week(year, week_number)
    end_of = Meal.end_of_week(year, week_number)
    Meal.where(family: family, date: start_of..end_of)
  end

  def self.start_of_week(year, week_number)
    Date.commercial(year,week_number,1)
  end

  def self.end_of_week(year, week_number)
    Date.commercial(year,week_number,7)
  end
end
