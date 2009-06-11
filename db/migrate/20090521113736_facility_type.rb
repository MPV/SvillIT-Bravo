class FacilityType < ActiveRecord::Migration
  def self.up
    rename_column :facilities, :type, :facility_type
  end

  def self.down
    rename_column :facilities, :facility_type, :type
  end
end
