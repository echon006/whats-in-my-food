class FoodFacade

  def self.get_searched_food(search)
    json = FoodService.searched_food(search)
  end

end 
