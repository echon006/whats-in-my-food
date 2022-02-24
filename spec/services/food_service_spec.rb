require 'rails_helper'

RSpec.describe FoodService do
  context 'class methods' do
    it "returns food data" do

      searched = FoodService.searched_food('sweet potatoes')

      expect(searched).to be_a Hash
      expect(searched[:totalHits]).to be_an(Integer)

      expect(searched[:foods][0][:brandOwner]).to be_a String
      expect(searched[:foods][0][:ingredients]).to be_a String
      expect(searched[:foods][0][:gtinUpc]).to be_a String
    end
  end
end
