class Waypoint < ActiveRecord::Base
  belongs_to :itinerary
  has_and_belongs_to_many :travelers
  validates_presence_of :name, :location

  validate :occurs_on_between_itinerary_depart_and_return_dates

  def occurs_on_between_itinerary_depart_and_return_dates
    unless occurs_on.between? itinerary.depart_on, itinerary.return_on
      errors.add(
        :occurs_on, 
        "must be between the itinerary departure (#{itinerary.depart_on}) and return (#{itinerary.return_on}) dates"
      )
    end
  end
end
