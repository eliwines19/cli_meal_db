class Meal
  attr_accessor :name, :image_url, :api_id, :meal_category, :meal_area, :meal_instructions

  @@all = []

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.veg_meals_array
    veg_meals = []
    veg_meals << self.get_vegetarian_meals
    veg_meals
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
