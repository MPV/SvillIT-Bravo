class RemoveSport < ActiveRecord::Migration
  def self.up
    remove_column :sections, :sport
  end

  def self.down
    add_column :sections, :sport, :string
  end
end
