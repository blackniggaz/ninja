json.array!(@users) do |user|
  json.extract! user, :id, :username, :email, :password, :description
  json.url user_url(user, format: :json)
end
