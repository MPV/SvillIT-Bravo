class GroupMember < ActiveRecord::Base
#  validates_presence_of :group_id, :user_id
  belongs_to :group
  belongs_to :user
#  belongs_to :section
end
