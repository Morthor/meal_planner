module MealsHelper

  def link_to_show_or_add_meal kind, date
    meal = Meal.find_by_date_and_kind(date, Meal.kinds[kind.to_sym])
    if meal
      link_to meal.recipe.name, edit_meal_path(meal)
    else
      link_to kind, new_meal_path(date: date, kind: kind)
    end
  end

  def lunch_for date
    Meal.where(date: date, kind: :lunch)
  end

  def dinner_for date
    Meal.where(date: date, kind: :dinner)
  end
end
