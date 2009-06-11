class CreateAds < ActiveRecord::Migration
  def self.up
    create_table :ads do |t|
      t.string :name
      t.integer :advertiser_id
      t.integer :advertising_space_id
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end

  def self.down
    drop_table :ads
  end
end
