class CLI

  def call
    welcome
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
      puts "---------------------------------"
      sleep(0.5)
      puts "Enter '1' for a random meal"
      sleep(0.5)
      puts "Enter '2' to see your saved meals"
      sleep(0.5)
      puts "Enter 'exit' to exit the app"
      sleep(0.5)
      puts "---------------------------------"
      puts ""
      input = gets.strip.downcase

      if input == "1"
        print_random_meal
      elsif input == "2"
        show_saved_meals
      elsif input == "exit"
        goodbye
        break
      else
        wrong_input
      end
    end
  end

    def print_random_meal
      API.get_random_meal
      rando_meal = Meal.all.last
      puts "Here is a brand new meal for you to try!"
      puts ""
      sleep(1)
      puts "Name of meal: #{rando_meal.name}"
      sleep(0.5)
      puts "Category of meal: #{rando_meal.meal_category}"
      sleep(2)
      meal_menu
    end

    def show_saved_meals
      saved_meals = Meal.all
      if saved_meals.size > 0
        saved_meals.each.with_index(1) do |hash, index|
          sleep(1)
          puts "#{index}.) Meal: #{hash.name}"
          puts "   Category: #{hash.meal_category}"
          puts "   Link to Image: #{hash.image_url}"
          puts ""
          puts "   Instructions:"
          puts "   #{hash.meal_instructions}"
          puts ""
          puts "   #{hash.name} is most commonly found in #{hash.meal_area} areas."
        end
      elsif saved_meals.empty?
        puts "Sorry, no meals saved yet!"
      end
    end

    def meal_menu
      input = nil
      while input != "main"
        puts "To find out more about this meal, please choose from the following:"
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
          save_meal
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
          puts "#{hash.name} is typically found in #{hash.meal_area} areas"
          puts ""
          sleep(2)
        end
      end

      def save_meal
        input = nil
        while input != "y"
          puts ""
          puts "Would you like to save this meal?"
          puts ""
          puts "Enter 'y' if you would like to save"
          puts "Enter 'n' if you would not like to save"
          input = gets.strip.downcase

          if input == 'n'
            Meal.destroy_last_meal
            break
            main_menu
            break
          elsif input == "y"
            break
            main_menu
          else
            wrong_input
          end
        end
      end

        def goodbye
          puts ""
          puts "Thanks for checking out the Random Meal Generator! See you again soon!"
          sleep(1)
        end

        def wrong_input
          puts ""
          puts "Not sure what you mean... try a different input!"
          sleep(1)
        end

end
