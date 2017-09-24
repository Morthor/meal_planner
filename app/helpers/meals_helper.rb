module MealsHelper

  def lunch_for date
    Meal.where(date: date, kind: :lunch)
  end

  def dinner_for date
    Meal.where(date: date, kind: :dinner)
  end
end
