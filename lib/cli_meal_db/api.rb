class API
  def self.get_meal_categories
    response = HTTParty.get("https://www.themealdb.com/api/json/v1/1/list.php?c=list")

    #binding.pry

    @@all_meal_categories = response['meals'].map {|meals_hash| meals_hash['strCategory']}
  end

  def self.all_meal_categories
    @@all_meal_categories
  end

end
