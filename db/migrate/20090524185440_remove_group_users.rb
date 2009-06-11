class RemoveGroupUsers < ActiveRecord::Migration
  def self.up
	drop_table :groups_users
  end

  def self.down
	create_table :groups_users do |t|
	  t.integer :group_id
	  t.integer :user_id

	  t.timestamps
	end
  end
end
