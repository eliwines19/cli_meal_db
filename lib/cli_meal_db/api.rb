class API
  def self.get_vegan_meals
    api_response = HTTParty.get("https://www.themealdb.com/api/json/v1/1/filter.php?c=Vegan")

    api_response['meals'].each do |hash| hash['strMeal']
      meal = Meal.new
      binding.pry
      meal.name =
      meal.image_url =
      meal.api_id =
    end
    meal.name = meal.meals.map {|key| key['strMeal']}
    meal.image_url = meal.meals.map {|key| key['strMealThumb']}
    meal
  end



  def self.get_vegetarian_meals
    api = HTTParty.get("https://www.themealdb.com/api/json/v1/1/filter.php?c=Vegetarian")

    meal = self.new
    meal.meals = api['meals'].each {|hash| hash['strMeal']}
    meal.name = meal.meals.map {|key| key['strMeal']}
    meal.image_url = meal.meals.map {|key| key['strMealThumb']}
    meal
  end
end
