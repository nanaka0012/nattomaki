json.extract! user, :id, :user_id, :mail, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
