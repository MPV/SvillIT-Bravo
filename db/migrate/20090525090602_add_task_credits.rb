class AddTaskCredits < ActiveRecord::Migration
  def self.up
	add_column :tasks, :credits, :integer
  end

  def self.down
    remove_column :tasks, :credits
  end
end
