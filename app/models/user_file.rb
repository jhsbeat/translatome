class UserFile < ActiveRecord::Base
  belongs_to :user
  belongs_to :file_status
  belongs_to :file_type
  mount_uploader :file, FileUploader

  validates :user, presence: true
  validates :file, presence: true

  before_save :parse_file

  def parse_file
    parse_pdf
  end

  private
  def parse_pdf
    reader = PDF::Reader.new(self.file.current_path)

    self.pdf_version = reader.pdf_version
    self.metadata = reader.metadata
    self.page_count = reader.page_count

    
  end
end
