class CLI

  def call
    welcome
    API.get_random_meal
    main_menu
  end

  def welcome
    puts "Welcome to the Random Meal Generator"
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
        print_random_meal
      elsif input == "exit"
        goodbye
        break
      else
        wrong_input
      end
    end
  end

  def print_random_meal
    puts "Here is a brand new meal for you to try!"
    puts ""
    sleep(1)
    rando_meal = Meal.all
    rando_meal.each do |hash|
      puts "Name of meal: #{hash.name}"
      sleep(0.5)
      puts "Category of meal: #{hash.meal_category}"
      sleep(2)
    end
    meal_menu
  end

  def meal_menu
    input = nil
    while input != "main"
      puts ""
      sleep(0.5)
      puts "-----------------------------------------------"
      puts "Enter '1' for meal instructions"
      sleep(0.5)
      puts "Enter '2' for a link to the image of the meal"
      sleep(0.5)
      puts "Enter '3' for the area this meal is most common"
      sleep(0.5)
      puts "Enter 'main' to return to the main menu"
      sleep(0.5)
      puts "-----------------------------------------------"
      puts ""
      input = gets.strip.downcase

      if input == "1"
        print_meal_instructions
      elsif input == "2"
        print_meal_image
      elsif input == "3"
        print_meal_area
      elsif input == "main"
        break
      else
        wrong_input
      end
    end
  end

  def print_meal_instructions
    meal_info = Meal.all
    meal_info.each do |hash|
      puts "#{hash.name} Instructions:"
      sleep(1)
      puts "#{hash.meal_instructions}"
      puts ""
      sleep(2)
    end
  end

  def print_meal_image
    meal_info = Meal.all
    meal_info.each do |hash|
      puts "#{hash.name} Image Link:"
      sleep(1)
      puts "#{hash.image_url}"
      puts ""
      sleep(2)
    end
  end

  def print_meal_area
    meal_info = Meal.all
    meal_info.each do |hash|
      puts "#{hash.name} is commonly found in:"
      puts "#{hash.meal_area}"
      puts ""
      sleep(2)
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
    sleep(1)
  end

end
