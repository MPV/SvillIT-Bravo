class CreateAdvertisingSpaces < ActiveRecord::Migration
  def self.up
    create_table :advertising_spaces do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :advertising_spaces
  end
end
