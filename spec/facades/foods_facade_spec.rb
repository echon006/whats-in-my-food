require 'rails_helper'

RSpec.describe FoodsFacade do

  it 'returns a list of food related to the search' do
    foods = FoodsFacade.get_searched_Food("sweet potatoes")

    expect(foods).to be_an Array
  end
end
