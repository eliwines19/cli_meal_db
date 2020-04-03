class Meal
  attr_accessor :name, :image_url, :meal_category, :meal_area, :meal_instructions

  @@all = []

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.destroy_last_meal
    @@all.pop
  end

end
