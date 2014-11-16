class WaypointsController < ApplicationController
	before_filter :assign_itinerary, only: [:new, :edit]
	before_filter :assign_waypoint, only: [:edit, :show, :update, :destroy]


	def index
		@itinerary = Itinerary.find(params[:itinerary_id])
		@waypoints = Waypoint.where(itinerary_id: @itinerary.id)
	end

	def create
		Waypoint.create(waypoint_params)

		redirect_to itinerary_waypoints_path(@itinerary.id)
	end

	def new
		@waypoint = Waypoint.new
	end

	def edit
	end

	def show
	end

	def update
		itinerary = Itinerary.find(params[:itinerary_id])
		@waypoint.update(waypoint_params)

		redirect_to itinerary_waypoint_path(itinerary.id, @waypoint.id)
	end

	def destroy
		@waypoint.destroy

		redirect_to root_path
	end

private
	def waypoint_params
		params.require(:waypoint).permit(:name, :location, :visit_date)
	end

	def assign_waypoint
		@waypoint = Waypoint.find(params[:id])
	end

	def assign_itinerary
		@itinerary = Itinerary.find(params[:itinerary_id])
	end
end
