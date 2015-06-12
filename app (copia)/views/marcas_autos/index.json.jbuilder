json.array!(@marcas_autos) do |marcas_auto|
  json.extract! marcas_auto, :id, :marca
  json.url marcas_auto_url(marcas_auto, format: :json)
end
