class TravelersController < ApplicationController
	before_filter :assign_itinerary, only: [:new, :edit]
	before_filter :assign_traveler, only: [:edit, :show, :update, :destroy]


	def index
		@itinerary = Itinerary.find(params[:itinerary_id])
		@travelers = Traveler.where(itinerary_id: @itinerary.id)
	end

	def create
		Traveler.create(traveler_params.merge(itinerary_id: params[:itinerary_id]))

		redirect_to itinerary_traveler_path(params[:itinerary_id])
	end

	def new
		@traveler = Traveler.new
	end

	def edit
	end

	def show
	end

	def update
		itinerary = Itinerary.find(params[:itinerary_id])
		@traveler.update(traveler_params)

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
