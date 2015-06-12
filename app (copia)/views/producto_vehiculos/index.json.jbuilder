json.array!(@producto_vehiculos) do |producto_vehiculo|
  json.extract! producto_vehiculo, :id, :producto, :marca, :modelos, :anho, :motor, :patente, :fecha_inicio, :fecha_termino, :nombre_comprador, :apellido_comprador, :rut_comprador, :digito_verifiador_comprador, :email_comprador, :numero_comprador, :nombre_asegurado, :apellido_asegurado, :rut_asegurado, :digito_verificador_asegurado, :email_asegurado, :numero_asegurado
  json.url producto_vehiculo_url(producto_vehiculo, format: :json)
end
