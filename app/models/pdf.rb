class Pdf < StoredFile
  has_attachment  :content_type => 'application/pdf',
                  :max_size => 3.megabytes,
                  :storage => :s3

  validates_as_attachment
end
