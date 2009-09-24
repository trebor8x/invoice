class Doc < StoredFile
  set_table_name "stored_files"
  has_attachment  :content_type => 'application/msword',
                  :max_size => 3.megabytes,
                  :storage => RAILS_ENV == 'production' ? :s3 : :file_system,
                  :s3_access => :private

  validates_as_attachment
end
