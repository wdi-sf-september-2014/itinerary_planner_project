class WaypointsController < ApplicationController
	before_filter :assign_itinerary, only: [:index, :create, :new, :edit]
	before_filter :assign_waypoint, only: [:edit, :show, :update, :destroy]


	def index
		@waypoints = Waypoint.where(itinerary_id: @itinerary.id)
	end

	def create
		w = Waypoint.create(waypoint_params)
		@itinerary.waypoints << w

		redirect_to itinerary_waypoints_path(params[:itinerary_id])
	end

	def new
		@waypoint = Waypoint.new
	end

	def edit
		@travelers = @waypoint.travelers
	end

	def show
	end

	def update
		params[:waypoint][:travelers] ||= []
		@waypoint.travelers = []
		@waypoint.travelers << Traveler.find(params[:waypoint][:travelers])

		  redirect_to root_path
	end

	def destroy
		if @waypoint.travelers.size > 0
			@waypoint.travelers.destroy_all
		end
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
