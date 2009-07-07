class RenameFiles < ActiveRecord::Migration
  def self.up
	  rename_table :files, :storedFiles
  end

  def self.down
	  rename_table :storedFiles, :files
  end
end
