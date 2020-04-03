class CLI

  def call
    welcome
    API.get_random_meal
    main_menu
  end

  def welcome
    puts "Welcome to the SmarterEatingHabits app!"
  end

  def main_menu
    input = nil
    while input != "exit"
      puts ""
      sleep(0.5)
      puts "------------------------------"
      sleep(0.5)
      puts "Enter '1' for a random meal"
      sleep(0.5)
      puts "Enter 'exit' to exit the app"
      sleep(0.5)
      puts "------------------------------"
      puts ""
      input = gets.strip.downcase

      if input == "1"
        list_random_meal
      elsif input == "exit"
        goodbye
        break
      else
        wrong_input
      end
    end
  end

  def list_random_meal
    puts "Here is a brand new meal for you to try!"
    puts ""
    sleep(1)
    rando_meal = Meal.all
    rando_meal.each do |hash|
      puts "#{hash.name}"
      sleep(0.5)
      puts "#{hash.meal_category}"
      meal_menu
    end
  end

  # def meal_menu
  #
  # end

  def goodbye
    puts ""
    puts "Thanks for checking out the SmarterEatingHabits app! See you again soon!"
    sleep(1)
  end

  def wrong_input
    puts ""
    puts "Not sure what you mean... try a different input!"
    sleep(1)
  end

end
