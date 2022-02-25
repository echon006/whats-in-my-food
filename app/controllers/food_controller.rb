class FoodController < ApplicationController
  def show
    @query = params[:q]

    @food = FoodFacade.get_searched_food(@query)
  end
end
