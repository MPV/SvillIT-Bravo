class AdminCoachAndPr < ActiveRecord::Migration
  def self.up
    add_column :users, :is_admin, :boolean
    add_column :users, :is_coach, :boolean
    add_column :users, :is_pr_admin, :boolean
  end

  def self.down
    remove_column :users, :is_admin
    remove_column :users, :is_coach
    remove_column :users, :is_pr_admin
  end
end
