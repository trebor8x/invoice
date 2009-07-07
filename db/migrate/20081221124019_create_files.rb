class CreateFiles < ActiveRecord::Migration
  def self.up
	  create_table :files do |t|
		  t.string :type, :file_name, :content_type
		  t.integer :size, :invoice_id
		  t.timestamps
	  end
  end

  def self.down
	  drop_table :files
  end
end
