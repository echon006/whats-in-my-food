class FoodController < ApplicationController
  def show
    @query = params[:q]

    @foods = FoodFacade.get_searched_food(@query)
  end
end
