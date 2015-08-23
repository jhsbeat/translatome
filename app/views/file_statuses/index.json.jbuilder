json.array!(@file_statuses) do |file_status|
  json.extract! file_status, :id, :code, :name
  json.url file_status_url(file_status, format: :json)
end
