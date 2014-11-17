class ItinerariesController < ApplicationController
  def new
    @itinerary = Itinerary.new
  end

  def create
    @itinerary = Itinerary.create params.require(:itinerary).permit(:name, :origin, :destination, :depart_on, :return_on)
    unless @itinerary.errors.any?
      redirect_to itinerary_path(@itinerary)
    else 
      flash.now[:alert] = "Error"
      render :new
    end
  end

  def index
  end

  def show
    @itinerary = Itinerary.find params[:id]
  end
end
