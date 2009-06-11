class UserAttributes < ActiveRecord::Migration
  def self.up
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :national_id, :integer
    add_column :users, :street, :string
    add_column :users, :postal_code, :string
    add_column :users, :city, :string
  end

  def self.down
    remove_column :users, :name
    remove_column :users, :surname
    remove_column :users, :national_id
    remove_column :users, :street
    remove_column :users, :postal_code
    remove_column :users, :city
  end
end
