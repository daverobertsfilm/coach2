class SubVehicle < ActiveRecord::Base
  belongs_to :vehicle
  belongs_to :coach_tour
end
