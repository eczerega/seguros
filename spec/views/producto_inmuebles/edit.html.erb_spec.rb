require 'rails_helper'

RSpec.describe "producto_inmuebles/edit", type: :view do
  before(:each) do
    @producto_inmueble = assign(:producto_inmueble, ProductoInmueble.create!(
      :producto => "MyString",
      :tipo_vivienda => "MyString",
      :construccion => "MyString",
      :region => "MyString",
      :ciudad => "MyString",
      :comuna => "MyString",
      :calle => "MyString",
      :numero => 1,
      :nombre_comprador => "MyString",
      :apellido_comprador => "MyString",
      :rut_comprador => "MyString",
      :digito_verificador_comprador => "MyString",
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

  it "renders the edit producto_inmueble form" do
    render

    assert_select "form[action=?][method=?]", producto_inmueble_path(@producto_inmueble), "post" do

      assert_select "input#producto_inmueble_producto[name=?]", "producto_inmueble[producto]"

      assert_select "input#producto_inmueble_tipo_vivienda[name=?]", "producto_inmueble[tipo_vivienda]"

      assert_select "input#producto_inmueble_construccion[name=?]", "producto_inmueble[construccion]"

      assert_select "input#producto_inmueble_region[name=?]", "producto_inmueble[region]"

      assert_select "input#producto_inmueble_ciudad[name=?]", "producto_inmueble[ciudad]"

      assert_select "input#producto_inmueble_comuna[name=?]", "producto_inmueble[comuna]"

      assert_select "input#producto_inmueble_calle[name=?]", "producto_inmueble[calle]"

      assert_select "input#producto_inmueble_numero[name=?]", "producto_inmueble[numero]"

      assert_select "input#producto_inmueble_nombre_comprador[name=?]", "producto_inmueble[nombre_comprador]"

      assert_select "input#producto_inmueble_apellido_comprador[name=?]", "producto_inmueble[apellido_comprador]"

      assert_select "input#producto_inmueble_rut_comprador[name=?]", "producto_inmueble[rut_comprador]"

      assert_select "input#producto_inmueble_digito_verificador_comprador[name=?]", "producto_inmueble[digito_verificador_comprador]"

      assert_select "input#producto_inmueble_email_comprador[name=?]", "producto_inmueble[email_comprador]"

      assert_select "input#producto_inmueble_numero_comprador[name=?]", "producto_inmueble[numero_comprador]"

      assert_select "input#producto_inmueble_nombre_asegurado[name=?]", "producto_inmueble[nombre_asegurado]"

      assert_select "input#producto_inmueble_apellido_asegurado[name=?]", "producto_inmueble[apellido_asegurado]"

      assert_select "input#producto_inmueble_rut_asegurado[name=?]", "producto_inmueble[rut_asegurado]"

      assert_select "input#producto_inmueble_digito_verificador_asegurado[name=?]", "producto_inmueble[digito_verificador_asegurado]"

      assert_select "input#producto_inmueble_email_asegurado[name=?]", "producto_inmueble[email_asegurado]"

      assert_select "input#producto_inmueble_numero_asegurado[name=?]", "producto_inmueble[numero_asegurado]"
    end
  end
end
