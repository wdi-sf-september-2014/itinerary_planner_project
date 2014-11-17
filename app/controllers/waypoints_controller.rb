class WaypointsController < ApplicationController
  def new
    @itinerary = Itinerary.find params[:itinerary_id]
    @waypoint = Waypoint.new(itinerary: @itinerary)
  end

  def create
    @waypoint = Waypoint.create waypoint_params
    @waypoint.travelers << Traveler.find(
      params[:waypoint][:traveler_ids].reject {|id| id.to_i == 0 }.map { |id| id.to_i }
    )
    unless @waypoint.errors.any?
      redirect_to itinerary_path(params[:itinerary_id])
    else
      flash.now[:alert] = "Validation Errors"
      @itinerary = Itinerary.find params[:itinerary_id]
      render :new
    end
  end

  private
  def waypoint_params 
    params.require(:waypoint).permit(:name, :location, :occurs_on)
      .merge(itinerary_id: params[:itinerary_id])
  end
end
