class AddCoachToGroup < ActiveRecord::Migration
  def self.up
	add_column :groups, :coach_id, :integer
  end

  def self.down
	remove_column :groups, :coach_id
  end
end
