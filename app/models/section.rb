class Section < ActiveRecord::Base
  has_many :groups
  has_many :activities
  #has_many :users, :through => :groups
  has_many :users, :through => :groups

  validates_presence_of :name
end
