json.extract! lead, :id, :name, :email, :phone, :timeappoint, :message, :created_at, :updated_at
json.url lead_url(lead, format: :json)
