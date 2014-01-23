json.array!(@resume_collections) do |resume_collection|
  json.extract! resume_collection, :id, :name, :user_id
  json.url resume_collection_url(resume_collection, format: :json)
end
