class CLI

  def call
    #API.get_random_meal
    puts "Welcome to MealOfTheDay!"
    puts ""
    sleep(2)
    @input = nil
    menu
    while @input != "exit"
      @input = gets.strip
      if @input == "show meal"
        puts "This is the meal of the day!"
        sleep(2)
        API.get_random_meal
      elsif @input == "menu"
        menu
      elsif @input == "exit"
        puts "Thanks for checking out the MealOfTheDay app! See you again soon!"
        break
      else
        puts "Sorry! that didn't register with me.. try a different input "
      end
    end
  end

  def menu
    puts "For information on todays MealOfTheDay, type 'show meal' and press enter:"
    sleep(2)
    puts "type 'exit' to leave the app"
    sleep(2)
    puts "type 'menu' to return to the menu"
  end
end


    #def get_random_meal # grabs info from API, calls the display_meal_categories method
    #  API.get_meal_categories
    #  API.all_meal_categories
    #  self.display_meal_categories
    #end

    #def display_meal_categories # takes meal categories from API and puts into numbered list
    #  API.all_meal_categories.each.with_index(1) do |ingredient, index|
    #    puts index.to_s + '.) ' + ingredient
    #  end
    #  API.get_meals
    #end
