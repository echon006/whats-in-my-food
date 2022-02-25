require 'rails_helper'

RSpec.describe "Food Index page" do
  it "checks that the page exist" do
    visit '/foods'
  end

  it "checks for food attributes to be on page" do

    visit '/'
    fill_in(:q, with: "sweet potatoes" )
    click_button "Search"

    expect(page).to have_content(48008)
    expect(page).to have_content("Food Description: SWEET POTATOES")
    expect(page).to have_content("Food GTIN/UPC Code: 8901020020844")
    expect(page).to have_content("Food Brand Owner: NOT A BRANDED ITEM")
    expect(page).to have_content("Food ingredients: ORGANIC SWEET POTATOES.")

  end
end
