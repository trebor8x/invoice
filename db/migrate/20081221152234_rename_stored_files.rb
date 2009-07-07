class RenameStoredFiles < ActiveRecord::Migration
  def self.up
	  rename_table :storedFiles, :stored_files
  end

  def self.down
	  rename_table :stored_files, :storedFiles
  end
end
