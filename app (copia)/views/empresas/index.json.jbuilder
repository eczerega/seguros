json.array!(@empresas) do |empresa|
  json.extract! empresa, :id, :nombre, :rut, :digito_verificador, :giro, :domicilio_comercial, :representante_legal, :mail, :telefono, :cuenta_bancria, :banco, :estado
  json.url empresa_url(empresa, format: :json)
end
