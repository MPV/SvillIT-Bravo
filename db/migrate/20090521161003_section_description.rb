class SectionDescription < ActiveRecord::Migration
  def self.up
    add_column :sections, :description, :text
  end

  def self.down
    remove_column :sections, :description
  end
end
