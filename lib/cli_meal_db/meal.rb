class Meal
  attr_accessor :name, :image_url, :api_id, :meal_category, :meal_area, :meal_instructions

  @@all = []

  def save
    @@all << self
  end

  def self.all
    @@all
  end

end
