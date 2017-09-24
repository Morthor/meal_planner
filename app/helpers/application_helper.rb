module ApplicationHelper

  def render_week_options
    current_week = Date.today.strftime("%W").to_i
    options = []
    (current_week..(current_week+3)).each do |i|
      week  = i==52 ? 52 : i%52
      year = i>52 ? Date.today.year+1 : Date.today.year
      options << ["#{i}: #{l Meal.start_of_week(year,week)} - #{l Meal.end_of_week(year,week)}", i, {year: year, week_number: week}]
    end
    options
  end
end
