class API

  def self.get_random_meal
    response = HTTParty.get("https://themealdb.com/api/json/v1/1/random.php")
    @@random_meal = response['meals'].each do |key, value|
      key.each do |key, value|
        puts "#{key}: #{value}"
        puts ""
        sleep (1)
      end
    end
  end

  def self.random_meal
    @@random_meal
  end

end
