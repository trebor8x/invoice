class RenameFileNameColumn < ActiveRecord::Migration
  def self.up
	  rename_column :stored_files, :file_name, :filename
  end

  def self.down
	  rename_column :stored_files, :filename, :file_name
  end
end
