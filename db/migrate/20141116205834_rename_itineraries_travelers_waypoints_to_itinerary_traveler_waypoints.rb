class RenameItinerariesTravelersWaypointsToItineraryTravelerWaypoints < ActiveRecord::Migration
  def change
    rename_table :itineraries_travelers_waypoints, :itinerary_traveler_waypoints
  end
end
