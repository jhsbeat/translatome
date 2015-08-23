json.array!(@user_files) do |user_file|
  json.extract! user_file, :id, :user_id, :file, :file_status_id, :file_type_id, :title, :producer, :creator, :creation_date, :mod_date, :metadata, :page_count, :pdf_version
  json.url user_file_url(user_file, format: :json)
end
