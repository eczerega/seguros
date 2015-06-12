json.array!(@stores_users) do |stores_user|
  json.extract! stores_user, :id, :user_id, :store_id
  json.url stores_user_url(stores_user, format: :json)
end
