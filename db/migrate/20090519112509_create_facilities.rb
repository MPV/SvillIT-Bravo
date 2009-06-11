class CreateFacilities < ActiveRecord::Migration
  def self.up
    create_table :facilities do |t|
      t.string :name
      t.text :description
      t.string :type
      t.float :hourly_fee

      t.timestamps
    end
  end

  def self.down
    drop_table :facilities
  end
end
