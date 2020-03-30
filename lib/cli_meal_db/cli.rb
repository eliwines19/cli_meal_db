class CLI

  def call
    puts "Welcome to MealOfTheDay!"
    puts ""
    sleep(2)
    @input = nil
    menu
    while @input != "exit"
      @input = gets.strip
      if @input == "meal"
        puts "This is the meal of the day!"
        sleep(2)
        API.get_random_meal
      elsif @input == "menu"
        menu
      elsif @input == "exit"
        puts "Thanks for checking out the MealOfTheDay app! See you again soon!"
        sleep(1)
        break
      else
        puts "Sorry! that didn't register with me.. try a different input "
      end
    end
  end

  def menu
    puts "For information on todays MealOfTheDay, type 'meal' and press enter:"
    sleep(2)
    puts "type 'exit' to leave the app"
    sleep(2)
    puts "type 'menu' to return to the menu"
  end

end
