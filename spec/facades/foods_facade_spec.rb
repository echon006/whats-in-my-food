require 'rails_helper'

RSpec.describe FoodFacade do

  it 'returns a list of food related to the search' do
    foods = FoodFacade.get_searched_food("sweet potatoes")
    expect(foods).to be_an Hash
    expect(foods[:foods]).to be_an Array
  end
end
