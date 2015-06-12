require 'rails_helper'

RSpec.describe "producto_inmuebles/show", type: :view do
  before(:each) do
    @producto_inmueble = assign(:producto_inmueble, ProductoInmueble.create!(
      :producto => "Producto",
      :tipo_vivienda => "Tipo Vivienda",
      :construccion => "Construccion",
      :region => "Region",
      :ciudad => "Ciudad",
      :comuna => "Comuna",
      :calle => "Calle",
      :numero => 1,
      :nombre_comprador => "Nombre Comprador",
      :apellido_comprador => "Apellido Comprador",
      :rut_comprador => "Rut Comprador",
      :digito_verificador_comprador => "Digito Verificador Comprador",
      :email_comprador => "Email Comprador",
      :numero_comprador => "Numero Comprador",
      :nombre_asegurado => "Nombre Asegurado",
      :apellido_asegurado => "Apellido Asegurado",
      :rut_asegurado => "Rut Asegurado",
      :digito_verificador_asegurado => 2,
      :email_asegurado => "Email Asegurado",
      :numero_asegurado => "Numero Asegurado"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Producto/)
    expect(rendered).to match(/Tipo Vivienda/)
    expect(rendered).to match(/Construccion/)
    expect(rendered).to match(/Region/)
    expect(rendered).to match(/Ciudad/)
    expect(rendered).to match(/Comuna/)
    expect(rendered).to match(/Calle/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Nombre Comprador/)
    expect(rendered).to match(/Apellido Comprador/)
    expect(rendered).to match(/Rut Comprador/)
    expect(rendered).to match(/Digito Verificador Comprador/)
    expect(rendered).to match(/Email Comprador/)
    expect(rendered).to match(/Numero Comprador/)
    expect(rendered).to match(/Nombre Asegurado/)
    expect(rendered).to match(/Apellido Asegurado/)
    expect(rendered).to match(/Rut Asegurado/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Email Asegurado/)
    expect(rendered).to match(/Numero Asegurado/)
  end
end
