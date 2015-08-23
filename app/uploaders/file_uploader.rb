class FileUploader < CarrierWave::Uploader::Base
  storage :file

  # **** Warning ****
  #    Files in #{Rails.env}/uploads are PUBLICly readable
  #    For private files, use HybridPrivateUploader instead
  def store_dir
    "#{Rails.env}/uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

end