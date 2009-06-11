class CreateBookings < ActiveRecord::Migration
  def self.up
    create_table :bookings do |t|
      t.string :name
      t.text :description
      t.integer :facility_id
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end

  def self.down
    drop_table :bookings
  end
end
