require 'rails_helper'

feature "Creating an Itinerary", :type => :feature do
  scenario "with valid parameters" do
    #1. setup
    visit new_itinerary_path
  end
end
