class CLI

  def begin_app
    self.welcome
    self.get_main_ingredient_list
  end

  def welcome
    puts "Welcome to mymealfinder!"
    sleep(3)
    puts "Ready to find a meal that's right for you?"
    sleep(3)
    puts "Please select a number listed below to find the right meal for you!"
    sleep(3)
  end

  def get_main_ingredient_list
    binding.pry
    #calls API method to get list of main ingredients
  end

  # to call an instance method we need instances or objects of the class
  #def test # instance method
  #  puts "Helloooo"
  #end
end
