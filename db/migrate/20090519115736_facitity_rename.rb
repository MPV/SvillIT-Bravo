class FacitityRename < ActiveRecord::Migration
  def self.up
    rename_column :activities, :facitity_id, :facility_id
  end

  def self.down
    rename_column :activities, :facility_id, :facitity_id
  end
end
