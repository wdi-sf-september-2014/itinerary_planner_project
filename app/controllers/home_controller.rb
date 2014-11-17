class HomeController < ApplicationController
  def index
    @itineraries = Itinerary.all
    @travelers = Traveler.all
  end
end
