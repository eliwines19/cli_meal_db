class API

  def self.get_random_meal
    api_response = HTTParty.get("https://www.themealdb.com/api/json/v1/1/random.php")

    api_response['meals'].each do |hash|
      meal = Meal.new
      meal.name = hash['strMeal']
      meal.image_url = hash['strMealThumb']
      meal.meal_category = hash['strCategory']
      meal.meal_instructions = hash['strInstructions']
      meal.meal_area = hash['strArea']
      meal.save
      meal
    end
  end

end
