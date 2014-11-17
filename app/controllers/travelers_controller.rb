class TravelersController < ApplicationController
  def index
    @travelers = Traveler.all
  end

  def show
    @traveler = Traveler.find params[:id]
  end

  def new
    @traveler = Traveler.new
  end

  def create
    @traveler = Traveler.create traveler_params
    unless @traveler.errors.any?
      redirect_to @traveler
    else
      flash.now[:alert] = "Validation Errors"
      render :new
    end
  end

  private
  def traveler_params 
    params.require(:traveler).permit(:first_name, :last_name, :email)
  end
end
