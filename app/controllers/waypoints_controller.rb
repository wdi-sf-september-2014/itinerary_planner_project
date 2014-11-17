class WaypointsController < ApplicationController
  def new
    @itinerary = Itinerary.find params[:itinerary_id]
    @waypoint = Waypoint.new(itinerary: @itinerary)
  end

  def create
    @waypoint = Waypoint.create waypoint_params
    unless @waypoint.errors.any?
      redirect_to itinerary_path(params[:itinerary_id])
    else
      flash.now[:alert] = "Validation Errors"
      render :new
    end
  end

  private
  def waypoint_params 
    params.require(:waypoint).permit(:name, :location)
      .merge(itinerary_id: params[:itinerary_id])
  end
end
