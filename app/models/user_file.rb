class UserFile < ActiveRecord::Base
  belongs_to :user
  belongs_to :file_status

  validates :user, presence: true
  validates :file, presence: true

  mount_uploader :file, FileUploader

end
