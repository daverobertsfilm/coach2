class CoachTour < ActiveRecord::Base
  has_many :sub_hotels
  has_many :sub_vehicles
end
