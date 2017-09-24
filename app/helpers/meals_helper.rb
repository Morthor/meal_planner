module MealsHelper

  def lunch_for date
    current_family.meals.where(date: date, kind: :lunch)
  end

  def dinner_for date
    current_family.meals.where(date: date, kind: :dinner)
  end
end
