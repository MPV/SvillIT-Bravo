class SectionHasActivities < ActiveRecord::Migration
  def self.up
    add_column :activities, :section_id, :integer
  end

  def self.down
    remove_column :activities, :section_id
  end
end
