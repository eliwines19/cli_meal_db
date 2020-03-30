class Meal
  attr_accessor :name

  def self.veg_meals
    self.pull_veg_meals
  end

  def self.pull_veg_meals
    veg_meals = []
    veg_meals << self.list_vegetarian_meals
  end

  def self.list_vegetarian_meals
    api = HTTParty.get("https://www.themealdb.com/api/json/v1/1/filter.php?c=Vegetarian")

    meal = self.new
    meal.name = api['meals'].map {|hash| hash['strMeal']}

    meal
  end

  def self.list_vegan_meals
    api = HTTParty.get("https://www.themealdb.com/api/json/v1/1/filter.php?c=Vegan")

    meal = self.new
    meal.name = api['meals'].map {|hash| hash['strMeal']}

    meal
  end

  def self.vegan_meals
    self.pull_vegan_meals
  end

  def self.pull_vegan_meals
    vegan_meals = []
    vegan_meals << self.list_vegan_meals
  end

end
