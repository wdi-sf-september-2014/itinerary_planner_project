class ItinerariesController < ApplicationController
  def new
    @itinerary = Itinerary.new
  end

  def create
    @itinerary = Itinerary.create params.require(:itinerary).permit(:name, :origin, :destination)
    redirect_to itinerary_path(@itinerary)
  end

  def index
  end

  def show
    @itinerary = Itinerary.find params[:id]
  end
end
