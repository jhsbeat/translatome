json.array!(@file_types) do |file_type|
  json.extract! file_type, :id, :code, :name
  json.url file_type_url(file_type, format: :json)
end
