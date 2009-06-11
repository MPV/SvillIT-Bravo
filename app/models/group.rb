class Group < ActiveRecord::Base
  belongs_to :section
  has_many :subgroups, :class_name => 'Group', :foreign_key => 'parent_id'
  belongs_to :parent, :class_name => 'Group', :foreign_key => 'parent_id'
  #has_many :group_members
  #has_many :users, :through => :group_members
  #has_and_belongs_to_many :users
  has_many :memberships
  has_many :users, :through => :memberships
#has_one :coach, :class_name => 'Users', :foreign_key => 'coach_id'

  def self.find_main
    Group.find(:all, :include => :section, :conditions => ['parent_id IS NULL'], :order => 'sections.name, groups.name')
  end
  
end
