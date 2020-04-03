class Meal
  attr_accessor :name, :image_url

  def self.get_vegetarian_meals
    api = HTTParty.get("https://www.themealdb.com/api/json/v1/1/filter.php?c=Vegetarian")

    meal = self.new
    meal.name = api['meals'].each {|hash| hash['strMeal']}
    meal.image_url = api['meals'].each {|hash| hash['strMealThumb']}
    meal
  end

  def self.veg_meals_array
    veg_meals = []
    veg_meals << self.get_vegetarian_meals
    veg_meals
  end

  def self.get_vegan_meals
    api = HTTParty.get("https://www.themealdb.com/api/json/v1/1/filter.php?c=Vegan")

    meal = self.new
    meal.name = api['meals'].each {|hash| hash['strMeal']}
    meal.image_url = api['meals'].each {|hash| hash['strMealThumb']}
    meal
  end

  def self.vegan_meals_array
    vegan_meals = []
    vegan_meals << self.get_vegan_meals
    vegan_meals
  end

  def self.all_meals_array
    all_meals = []
    all_meals << self.get_vegetarian_meals
    all_meals << self.get_vegan_meals
    all_meals
  end

end
