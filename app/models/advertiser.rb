class Advertiser < ActiveRecord::Base
  has_many :ads
  has_many :advertising_spaces, :through => :ad
end
