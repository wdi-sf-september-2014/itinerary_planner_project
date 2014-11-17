require 'rails_helper'

feature "Creating an Itinerary", :type => :feature do
  scenario "with valid parameters" do
    #1. setup
    #2. exercise
    visit new_itinerary_path
    fill_in "Name", with: "Trip to Paris"
    fill_in "Origin", with: "San Francisco, CA"
    fill_in "Destination", with: "Paris, FR"
    #3. verify
  end
end
