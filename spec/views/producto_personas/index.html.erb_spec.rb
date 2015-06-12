require 'rails_helper'

RSpec.describe "producto_personas/index", type: :view do
  before(:each) do
    assign(:producto_personas, [
      ProductoPersona.create!(
        :producto => "Producto",
        :nombre_comprador => "Nombre Comprador",
        :apellido_comprador => "Apellido Comprador",
        :rut_comprador => "Rut Comprador",
        :digito_verifiador_comprador => 1,
        :email_comprador => "Email Comprador",
        :numero_comprador => "Numero Comprador",
        :nombre_asegurado => "Nombre Asegurado",
        :apellido_asegurado => "Apellido Asegurado",
        :rut_asegurado => "Rut Asegurado",
        :digito_verificador_asegurado => 2,
        :email_asegurado => "Email Asegurado",
        :numero_asegurado => "Numero Asegurado"
      ),
      ProductoPersona.create!(
        :producto => "Producto",
        :nombre_comprador => "Nombre Comprador",
        :apellido_comprador => "Apellido Comprador",
        :rut_comprador => "Rut Comprador",
        :digito_verifiador_comprador => 1,
        :email_comprador => "Email Comprador",
        :numero_comprador => "Numero Comprador",
        :nombre_asegurado => "Nombre Asegurado",
        :apellido_asegurado => "Apellido Asegurado",
        :rut_asegurado => "Rut Asegurado",
        :digito_verificador_asegurado => 2,
        :email_asegurado => "Email Asegurado",
        :numero_asegurado => "Numero Asegurado"
      )
    ])
  end

  it "renders a list of producto_personas" do
    render
    assert_select "tr>td", :text => "Producto".to_s, :count => 2
    assert_select "tr>td", :text => "Nombre Comprador".to_s, :count => 2
    assert_select "tr>td", :text => "Apellido Comprador".to_s, :count => 2
    assert_select "tr>td", :text => "Rut Comprador".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Email Comprador".to_s, :count => 2
    assert_select "tr>td", :text => "Numero Comprador".to_s, :count => 2
    assert_select "tr>td", :text => "Nombre Asegurado".to_s, :count => 2
    assert_select "tr>td", :text => "Apellido Asegurado".to_s, :count => 2
    assert_select "tr>td", :text => "Rut Asegurado".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Email Asegurado".to_s, :count => 2
    assert_select "tr>td", :text => "Numero Asegurado".to_s, :count => 2
  end
end
