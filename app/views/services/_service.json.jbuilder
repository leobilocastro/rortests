json.extract! service, :id, :description, :title, :price, :user_id, :created_at, :updated_at
json.url service_url(service, format: :json)
