class CLI

  def begin_app
    self.welcome
    self.get_meal_categories
  end

  def welcome
    puts "Welcome to mymealfinder!"
    sleep(3)
    puts "Ready to find a meal that's right for you?"
    sleep(3)
    puts "Please select a number listed below to find the right meal for you!"
    sleep(3)
  end

  def get_meal_categories
    #calls API method to get list of main ingredients
    API.get_meal_categories
    #binding.pry
    API.all_meal_categories
    self.display_meal_categories
  end

  def display_meal_categories
    API.all_meal_categories.each.with_index(1) do |ingredient, index|
      #binding.pry
      puts index.to_s + '.) ' + ingredient
    end
  end

  # to call an instance method we need instances or objects of the class
  #def test # instance method
  #  puts "Helloooo"
  #end
end
