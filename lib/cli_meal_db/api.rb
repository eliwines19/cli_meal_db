class API
  def self.get_meal_categories # grabs info from the API
    response = HTTParty.get("https://www.themealdb.com/api/json/v1/1/list.php?c=list")
    @@all_meal_categories = response['meals'].map {|meals_hash| meals_hash['strCategory']}
  end

  def self.all_meal_categories #displays the list of meal categories
    @@all_meal_categories
  end

end
