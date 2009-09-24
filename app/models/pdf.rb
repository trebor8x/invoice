class Pdf < StoredFile
  has_attachment  :content_type => 'application/pdf',
                  :max_size => 3.megabytes,
                  :storage => RAILS_ENV == 'production' ? :s3 : :file_system,
                  :s3_access => :private

  validates_as_attachment
end
