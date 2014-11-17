class Traveler < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :email
  has_and_belongs_to_many :waypoints

  def full_name
    "#{first_name} #{last_name}"
  end
end
