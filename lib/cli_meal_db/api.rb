class API
  def self.get_main_ingredient
    response = HTTParty.get("https://www.themealdb.com/api/json/v1/1/list.php?i=list")

    #binding.pry

    @@all_main_ingredients = response[:meals].collect {|meals_hash| meals_hash['strIngredient']}
  end

  def self.all_main_ingredients
    @@all_main_ingredients
  end
  
end
