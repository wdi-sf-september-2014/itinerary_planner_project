class TravelersController < ApplicationController
	before_filter :assign_itinerary, only: [:index, :create, :new, :edit]
	before_filter :assign_traveler, only: [:edit, :show, :update, :destroy]


	def index
		@travelers = Traveler.where(itinerary_id: @itinerary.id)
	end

	def create
		t = Traveler.create(traveler_params)
		@itinerary.travelers << t

		redirect_to itinerary_travelers_path(params[:itinerary_id])
	end

	def new
		@traveler = Traveler.new
	end

	def edit
		#@waypoints = @travelers.waypoints
	end

	def show
	end

	def update
		itinerary = Itinerary.find(params[:itinerary_id])
		@traveler.update(traveler_params)
		if params[:waypoints]
			@traveler.waypoints << Waypoint.find(params[:traveler][:waypoint])
		end

		redirect_to itinerary_traveler_path(itinerary.id, @traveler.id)
	end

	def destroy
		@traveler.destroy

		redirect_to root_path
	end

private
	def traveler_params
		params.require(:traveler).permit(:first_name, :last_name, :email)
	end

	def assign_traveler
		@traveler = Traveler.find(params[:id])
	end

	def assign_itinerary
		@itinerary = Itinerary.find(params[:itinerary_id])
	end
end
