require 'rails_helper'

RSpec.describe "producto_vehiculos/show", type: :view do
  before(:each) do
    @producto_vehiculo = assign(:producto_vehiculo, ProductoVehiculo.create!(
      :producto => "Producto",
      :marca => "Marca",
      :modelos => "Modelos",
      :anho => 1,
      :motor => "Motor",
      :patente => "Patente",
      :nombre_comprador => "Nombre Comprador",
      :apellido_comprador => "Apellido Comprador",
      :rut_comprador => "Rut Comprador",
      :digito_verifiador_comprador => 2,
      :email_comprador => "Email Comprador",
      :numero_comprador => "Numero Comprador",
      :nombre_asegurado => "Nombre Asegurado",
      :apellido_asegurado => "Apellido Asegurado",
      :rut_asegurado => "Rut Asegurado",
      :digito_verificador_asegurado => 3,
      :email_asegurado => "Email Asegurado",
      :numero_asegurado => "Numero Asegurado"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Producto/)
    expect(rendered).to match(/Marca/)
    expect(rendered).to match(/Modelos/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Motor/)
    expect(rendered).to match(/Patente/)
    expect(rendered).to match(/Nombre Comprador/)
    expect(rendered).to match(/Apellido Comprador/)
    expect(rendered).to match(/Rut Comprador/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Email Comprador/)
    expect(rendered).to match(/Numero Comprador/)
    expect(rendered).to match(/Nombre Asegurado/)
    expect(rendered).to match(/Apellido Asegurado/)
    expect(rendered).to match(/Rut Asegurado/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Email Asegurado/)
    expect(rendered).to match(/Numero Asegurado/)
  end
end
