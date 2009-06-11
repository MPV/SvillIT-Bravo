class Activity < ActiveRecord::Base
  belongs_to :facility
  belongs_to :section
  has_many :participants
  has_one :result

  validates_presence_of :name, :facility_id, :start, :end
end
