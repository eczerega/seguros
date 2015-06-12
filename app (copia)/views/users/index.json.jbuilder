json.array!(@users) do |user|
  json.extract! user, :id, :name, :last_name, :rut, :email, :password_digest, :image
  json.url user_url(user, format: :json)
end
