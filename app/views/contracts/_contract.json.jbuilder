json.extract! contract, :id, :start_time, :completed, :observations, :price, :recurring, :user_id, :payment_id, :service_id, :created_at, :updated_at
json.url contract_url(contract, format: :json)
