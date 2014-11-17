class WaypointsController < ApplicationController
  def new
    @itinerary = Itinerary.find params[:itinerary_id]
    @waypoint = Waypoint.new(itinerary: @itinerary)
  end

  def create
  end
end
