class Meal
  attr_accessor :name, :category, :instructions, :ingredients
  @@all = []

  def initialize(name, category, instructions, ingredients)
    @name = name
    @category = category
    @instructions = instructions
    @ingredients = ingredients
    @@all << self
  end

  def self.all
    @@all
  end
end
