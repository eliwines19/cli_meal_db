class CLI

  def call
    welcome
    main_menu
  end

  def welcome
    puts "Welcome to the SmarterEatingHabits app!"
  end

  def list_vegetarian_meals
    puts "Vegetarian Meals:"
    puts ""
    sleep(1)
    @veg_meals = Meal.veg_meals
    @veg_meals.each do |meal|
      meal.name.each.with_index(1) do |name, index|
        puts "#{index}.) Name of Meal - #{name['strMeal']}"
        puts "  Image of Meal - #{name['strMealThumb']}"
        puts ""
        sleep(0.5)
      end
    end
  end

  def list_vegan_meals
    puts "Vegan meals:"
    puts ""
    sleep(1)
    @vegan_meals = Meal.vegan_meals
    @vegan_meals.each do |meal|
      meal.name.each.with_index(1) do |name, index|
        puts "#{index}.) Name of Meal - #{name['strMeal']}"
        puts "  Image of Meal - #{name['strMealThumb']}"
        puts ""
        sleep(0.5)
      end
    end
  end

  def goodbye
    puts ""
    puts "Thanks for checking out the SmarterEatingHabits app! See you again soon!"
    sleep(1)
  end

  def wrong_input
    puts ""
    puts "Not sure what you mean... try a different input!"
  end

  def main_menu
    input = nil
    while input != "exit"
      puts ""
      sleep(0.5)
      puts "------------------------------"
      sleep(0.5)
      puts "Enter '1' for Vegetarian meals"
      sleep(0.5)
      puts "Enter '2' for Vegan meals"
      sleep(0.5)
      puts "Enter 'exit' to exit the app"
      sleep(0.5)
      puts "------------------------------"
      puts ""
      input = gets.strip.downcase

      if input == "1"
        list_vegetarian_meals
      elsif input == "2"
        list_vegan_meals
      elsif input == "exit"
        goodbye
        break
      else
        wrong_input
      end
    end
  end

end
