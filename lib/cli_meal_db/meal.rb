class Meal
  attr_accessor :name, :image_url

  def self.list_vegetarian_meals
    api = HTTParty.get("https://www.themealdb.com/api/json/v1/1/filter.php?c=Vegetarian")

    meal = self.new
    meal.name = api['meals'].each {|hash| hash['strMeal']}
    meal.image_url = api['meals'].each {|hash| hash['strMealThumb']}
    meal
  end

  def self.pull_veg_meals
    veg_meals = []
    veg_meals << self.list_vegetarian_meals
  end

  def self.veg_meals
    self.pull_veg_meals
  end
  

  def self.list_vegan_meals
    api = HTTParty.get("https://www.themealdb.com/api/json/v1/1/filter.php?c=Vegan")

    meal = self.new
    meal.name = api['meals'].each {|hash| hash['strMeal']}
    meal.image_url = api['meals'].each {|hash| hash['strMealThumb']}
    meal
  end

  def self.pull_vegan_meal
    vegan_meals = []
    vegan_meals << self.list_vegan_meals
  end

  def self.vegan_meals
    self.pull_vegan_meal
  end

end
