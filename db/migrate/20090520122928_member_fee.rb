class MemberFee < ActiveRecord::Migration
  def self.up
    add_column :users, :fee_payed, :boolean
  end

  def self.down
    remove_column :users, :fee_payed
  end
end
