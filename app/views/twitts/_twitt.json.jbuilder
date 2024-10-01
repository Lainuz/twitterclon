json.extract! twitt, :id, :username, :description, :created_at, :updated_at
json.url twitt_url(twitt, format: :json)
