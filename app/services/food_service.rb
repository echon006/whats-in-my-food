class FoodService

  def self.searched_food(search)
    food_response = conn.get("/fdc/v1/foods/search?query=#{search}")
    @foods = JSON.parse(food_response.body, symbolize_names: true)
  end

  def self.conn
    conn = Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
        faraday.params[:api_key] = ENV['food_api_key']
    end
  end
end
