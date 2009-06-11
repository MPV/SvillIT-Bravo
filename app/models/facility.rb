class Facility < ActiveRecord::Base
  has_many :activities
  has_many :bookings

  validates_presence_of :name, :facility_type
end
