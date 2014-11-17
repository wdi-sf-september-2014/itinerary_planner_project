class ItinerariesController < ApplicationController
  def new
    @itinerary = Itinerary.new
  end

  def create
    @itinerary = Itinerary.create itinerary_params 
    unless @itinerary.errors.any?
      redirect_to itinerary_path(@itinerary)
    else 
      flash.now[:alert] = "Validation Errors"
      render :new
    end
  end

  def index
  end

  def show
    @itinerary = Itinerary.find params[:id]
  end

  private
  def itinerary_params
    params.require(:itinerary).permit(:name, :origin, :destination, :depart_on, :return_on)
  end
end
