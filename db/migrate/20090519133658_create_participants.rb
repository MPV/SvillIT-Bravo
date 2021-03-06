class CreateParticipants < ActiveRecord::Migration
  def self.up
    create_table :participants do |t|
      t.string :name
      t.integer :user_id
      t.integer :activity_id

      t.timestamps
    end
  end

  def self.down
    drop_table :participants
  end
end
