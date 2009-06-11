class Ad < ActiveRecord::Base
  belongs_to :advertiser
  belongs_to :advertising_space
end
