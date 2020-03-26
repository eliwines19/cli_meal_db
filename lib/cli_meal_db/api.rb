class API
  def self.get_main_ingredient
    response = HTTParty.get("https://www.themealdb.com/api/json/v1/1/list.php?i=list")

    binding.pry

    response[:meals]
  end
end
