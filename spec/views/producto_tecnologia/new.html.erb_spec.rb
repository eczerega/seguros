require 'rails_helper'

RSpec.describe "producto_tecnologia/new", type: :view do
  before(:each) do
    assign(:producto_tecnologium, ProductoTecnologium.new(
      :producto => "MyString",
      :tipo_producto => "MyString",
      :marca => "MyString",
      :anho => 1,
      :nombre_comprador => "MyString",
      :apellido_comprador => "MyString",
      :rut_comprador => "MyString",
      :digito_verifiador_comprador => 1,
      :email_comprador => "MyString",
      :numero_comprador => "MyString",
      :nombre_asegurado => "MyString",
      :apellido_asegurado => "MyString",
      :rut_asegurado => "MyString",
      :digito_verificador_asegurado => 1,
      :email_asegurado => "MyString",
      :numero_asegurado => "MyString"
    ))
  end

  it "renders new producto_tecnologium form" do
    render

    assert_select "form[action=?][method=?]", producto_tecnologia_path, "post" do

      assert_select "input#producto_tecnologium_producto[name=?]", "producto_tecnologium[producto]"

      assert_select "input#producto_tecnologium_tipo_producto[name=?]", "producto_tecnologium[tipo_producto]"

      assert_select "input#producto_tecnologium_marca[name=?]", "producto_tecnologium[marca]"

      assert_select "input#producto_tecnologium_anho[name=?]", "producto_tecnologium[anho]"

      assert_select "input#producto_tecnologium_nombre_comprador[name=?]", "producto_tecnologium[nombre_comprador]"

      assert_select "input#producto_tecnologium_apellido_comprador[name=?]", "producto_tecnologium[apellido_comprador]"

      assert_select "input#producto_tecnologium_rut_comprador[name=?]", "producto_tecnologium[rut_comprador]"

      assert_select "input#producto_tecnologium_digito_verifiador_comprador[name=?]", "producto_tecnologium[digito_verifiador_comprador]"

      assert_select "input#producto_tecnologium_email_comprador[name=?]", "producto_tecnologium[email_comprador]"

      assert_select "input#producto_tecnologium_numero_comprador[name=?]", "producto_tecnologium[numero_comprador]"

      assert_select "input#producto_tecnologium_nombre_asegurado[name=?]", "producto_tecnologium[nombre_asegurado]"

      assert_select "input#producto_tecnologium_apellido_asegurado[name=?]", "producto_tecnologium[apellido_asegurado]"

      assert_select "input#producto_tecnologium_rut_asegurado[name=?]", "producto_tecnologium[rut_asegurado]"

      assert_select "input#producto_tecnologium_digito_verificador_asegurado[name=?]", "producto_tecnologium[digito_verificador_asegurado]"

      assert_select "input#producto_tecnologium_email_asegurado[name=?]", "producto_tecnologium[email_asegurado]"

      assert_select "input#producto_tecnologium_numero_asegurado[name=?]", "producto_tecnologium[numero_asegurado]"
    end
  end
end
