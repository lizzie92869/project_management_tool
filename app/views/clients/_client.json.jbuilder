json.extract! client, :id, :name, :address, :contacts, :annual_budget, :note, :created_at, :updated_at
json.url client_url(client, format: :json)
