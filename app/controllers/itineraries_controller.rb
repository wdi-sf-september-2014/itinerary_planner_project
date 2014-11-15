class ItinerariesController < ApplicationController
	before_filter :assign_itinerary, only: [:show, :edit, :update, :destroy]

	def index
		@itineraries = Itinerary.all
	end

	def create
		#Team.create(name: params[:team][:name], country: params[:team][:country])
		Itinerary.create(itinerary_params)

		redirect_to "/"
	end

	def new
		@itinerary = Itinerary.new
	end

	def edit
	end

	def show
	end

	def update
		@itinerary.update(itinerary_params)

		redirect_to itinerary_path(@itinerary.id)
	end

	def destroy
		@itinerary.waypoints.destroy_all
		@itinerary.travelers.destroy_all
		@itinerary.destroy

		redirect_to "/"
	end

private
	def itinerary_params
		params.require(:itinerary).permit(:origin, :destination, :name, :departure_date, :return_date)
	end

	def assign_itinerary
		@itinerary = Itinerary.find(params[:id])
	end

end
