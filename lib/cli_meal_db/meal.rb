class Meal
  attr_accessor :name, :category, :instructions
  @@all = []

  def initialize(name, category, instructions)
    @name = name
    @category = category
    @instructions = instructions
    @@all << self 
  end

  def self.all
    @@all
  end

end
