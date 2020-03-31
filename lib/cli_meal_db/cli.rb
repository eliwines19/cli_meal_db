class CLI

  def call
    welcome
    main_menu
  end

  def welcome
    puts "Welcome to the SmarterEatingHabits app!"
    puts ""
  end

  def list_vegetarian_meals
    puts "Vegetarian Meals:"
    @veg_meals = Meal.veg_meals
    @veg_meals.each do |meal|
      puts meal.name
      puts ""
      sleep(1)
    end
  end

  def list_vegan_meals
    puts "Vegan meals:"
    sleep(2)
    @vegan_meals = Meal.vegan_meals
    @vegan_meals.each do |meal|
      puts meal.name
      puts ""
      sleep(1)
    end
  end

  def goodbye
    puts "Thanks for checking out the SmarterEatingHabits app! See you again soon!"
    sleep(1)
  end

  def main_menu
    input = nil
    while input != "exit"
      sleep(2)
      puts "------------------------------"
      puts "Enter '1' for Vegetarian meals"
      sleep(0.5)
      puts "Enter '2' for Vegan meals"
      sleep(0.5)
      puts "Enter 'exit' to exit the app"
      puts "------------------------------"
      input = gets.strip.downcase

      if input == "1"
        list_vegetarian_meals
      elsif input == "2"
        list_vegan_meals
      elsif input == "exit"
        goodbye
        break
      else
        "Didn't catch that... try a different input!"
      end
    end
  end

end
