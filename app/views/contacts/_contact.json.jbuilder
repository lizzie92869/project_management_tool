json.extract! contact, :id, :name, :company, :activity, :email, :phone_number, :note, :address, :created_at, :updated_at
json.url contact_url(contact, format: :json)
