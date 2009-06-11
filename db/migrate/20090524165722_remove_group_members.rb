class RemoveGroupMembers < ActiveRecord::Migration
  def self.up
    drop_table :group_members
  end
							  
  def self.down
    create_table :group_members do |t|
   	  t.integer :group_id
      t.integer :user_id
		  
   	  t.timestamps
  	end
  end
end
