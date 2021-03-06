json.array!(@producto_inmuebles) do |producto_inmueble|
  json.extract! producto_inmueble, :id, :producto, :tipo_vivienda, :construccion, :region, :ciudad, :comuna, :calle, :numero, :fecha_inicio, :fecha_termino, :nombre_comprador, :apellido_comprador, :rut_comprador, :digito_verificador_comprador, :email_comprador, :numero_comprador, :nombre_asegurado, :apellido_asegurado, :rut_asegurado, :digito_verificador_asegurado, :email_asegurado, :numero_asegurado
  json.url producto_inmueble_url(producto_inmueble, format: :json)
end
