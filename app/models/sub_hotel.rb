class SubHotel < ActiveRecord::Base
  belongs_to :hotel
  belongs_to :coach_tour
end
