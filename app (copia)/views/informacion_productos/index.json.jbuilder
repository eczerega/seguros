json.array!(@informacion_productos) do |informacion_producto|
  json.extract! informacion_producto, :id, :nombre, :tipo, :prima, :valor_asegurado, :duracion_meses, :aseguradora_responsable
  json.url informacion_producto_url(informacion_producto, format: :json)
end
