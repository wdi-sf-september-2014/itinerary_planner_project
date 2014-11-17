require 'rails_helper'

feature "Creating an Itinerary", :type => :feature do
  scenario "with valid parameters" do
    #1. setup
    
    #2. exercise
    # go to the right path
    visit new_itinerary_path
    # fill in and submit the form
    fill_in "Name", with: "Trip to Paris"
    fill_in "Origin", with: "San Francisco, CA"
    fill_in "Destination", with: "Paris, FR"
    click_button "Save"

    #3. verify
    # grab a ref to the last created itinerary
    itin = Itinerary.last
    # expect screen to have the name of the itinerary in an h2
    expect(page).to have_selector('h2', text: itin.name)
    expect(page).to have_selector('p', text: itin.origin)
    expect(page).to have_selector('p', text: itin.destination)
  end
end
