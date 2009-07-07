class AddStreetColumn < ActiveRecord::Migration
  def self.up
	  add_column :customers, :street, :string
  end

  def self.down
	  remove_column :customers, :street
  end
end
