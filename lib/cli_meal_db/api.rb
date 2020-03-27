class API

  def self.get_random_meal
    response = HTTParty.get("https://themealdb.com/api/json/v1/1/random.php")
    @@random_meal = response['meals'].each do |key, value|
      key.each do |key, value|
        puts "#{key}: #{value}"
        puts ""
        sleep (1)
      end
    end
  end

  def self.random_meal
    @@random_meal
  end

end

#  def self.get_random_meal # grabs random meal from the API
#    random_meal_response = HTTParty.get("https://www.themealdb.com/api/json/v1/1/list.php?c=list")

#    @name = random_meal_response['meals'].map {|meal_hash| meal_hash['strMeal']}
#    @category = random_meal_response['meals'].map {|meal_hash| meal_hash['strCategory']}
#    @instructions = random_meal_response['meals'].map {|meal_hash| meal_hash['strInstructions']}
#    @ingredients = random_meal_response['meals'].map {|meal_hash| meal_hash['strIngredient']}
#    Meal.new(@name, @category, @instructions, @ingredients)
#  end
