class Result < ActiveRecord::Base
  belongs_to :activity
  validates_presence_of :activity_id, :description
end
