class AdvertisingSpace < ActiveRecord::Base
  has_many :ads
  has_many :advertisers, :through => :ads
end
