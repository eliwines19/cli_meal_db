class CLI

  def begin_app #calls the welcome method, then the get_meal_categories method
    self.welcome
    self.get_meal_categories
  end

  def welcome # welcomes the user
    puts "Welcome to mymealfinder!"
    sleep(3)
    puts "Ready to find a meal that's right for you?"
    sleep(3)
    puts "Please select a number listed below to find the right meal for you!"
    sleep(3)
  end

  def get_meal_categories # grabs info from API, calls tge display_meal_categories method
    API.get_meal_categories
    API.all_meal_categories
    self.display_meal_categories
  end

  def display_meal_categories # takes meal categories from API and puts into numbered list 
    API.all_meal_categories.each.with_index(1) do |ingredient, index|
      puts index.to_s + '.) ' + ingredient
    end
  end

end
