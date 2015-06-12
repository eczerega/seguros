json.array!(@shop_points) do |shop_point|
  json.extract! shop_point, :id, :name, :city, :comuna, :rut, :street, :image
  json.url shop_point_url(shop_point, format: :json)
end
