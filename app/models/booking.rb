class Booking < ActiveRecord::Base
  belongs_to :facility

  validates_presence_of :facility_id, :name, :start, :end
end
