require 'rails_helper'

feature "Home Screen", :type => :feature do
  scenario "Visiting the home screen" do
    # 1. Setup
    # create some itineraries
    itins = []
    2.times do
      itins << create(:itinerary)
    end

    # 2. Exercise
    # visit the root path
    visit root_path

    # 3. Verify
    # expect home screen to have a title
    expect(page).to have_selector('h1', text: 'Itinerary Planner')
    # expect home screen to show the current itineraries
    expect(page).to have_selector('h2', text: 'Current Itineraries')

    # in the itineraries div
    within('#itineraries') do
      # let's make sure we can see all the itineraries
      itins.each_with_index do |itin, index|
        expect(page).to have_text itin.name
        expect(page).to have_text itin.origin
        expect(page).to have_text itin.destination
      end
    end
  end
end
