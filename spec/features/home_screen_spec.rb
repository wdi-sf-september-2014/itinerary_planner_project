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
    expect(page).to have_selector "h1 Itinerary Planner"
    # expect home screen to show the current itineraries
    expect(page).to have_selector "h2 Current Itineraries"

    # in the itineraries div
    within('#itineraries') do
      # let's make sure we can see all the itineraries
      itins.each_with_index do |i|
        within(".itinerary:nth-child(#{i})") do
          expect(page).to have_text i.name
          expect(page).to have_text i.origin
          expect(page).to have_text i.destination
        end
      end
    end
  end
end
