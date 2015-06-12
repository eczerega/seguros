require 'rails_helper'

RSpec.describe "producto_vehiculos/new", type: :view do
  before(:each) do
    assign(:producto_vehiculo, ProductoVehiculo.new(
      :producto => "MyString",
      :marca => "MyString",
      :modelos => "MyString",
      :anho => 1,
      :motor => "MyString",
      :patente => "MyString",
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

  it "renders new producto_vehiculo form" do
    render

    assert_select "form[action=?][method=?]", producto_vehiculos_path, "post" do

      assert_select "input#producto_vehiculo_producto[name=?]", "producto_vehiculo[producto]"

      assert_select "input#producto_vehiculo_marca[name=?]", "producto_vehiculo[marca]"

      assert_select "input#producto_vehiculo_modelos[name=?]", "producto_vehiculo[modelos]"

      assert_select "input#producto_vehiculo_anho[name=?]", "producto_vehiculo[anho]"

      assert_select "input#producto_vehiculo_motor[name=?]", "producto_vehiculo[motor]"

      assert_select "input#producto_vehiculo_patente[name=?]", "producto_vehiculo[patente]"

      assert_select "input#producto_vehiculo_nombre_comprador[name=?]", "producto_vehiculo[nombre_comprador]"

      assert_select "input#producto_vehiculo_apellido_comprador[name=?]", "producto_vehiculo[apellido_comprador]"

      assert_select "input#producto_vehiculo_rut_comprador[name=?]", "producto_vehiculo[rut_comprador]"

      assert_select "input#producto_vehiculo_digito_verifiador_comprador[name=?]", "producto_vehiculo[digito_verifiador_comprador]"

      assert_select "input#producto_vehiculo_email_comprador[name=?]", "producto_vehiculo[email_comprador]"

      assert_select "input#producto_vehiculo_numero_comprador[name=?]", "producto_vehiculo[numero_comprador]"

      assert_select "input#producto_vehiculo_nombre_asegurado[name=?]", "producto_vehiculo[nombre_asegurado]"

      assert_select "input#producto_vehiculo_apellido_asegurado[name=?]", "producto_vehiculo[apellido_asegurado]"

      assert_select "input#producto_vehiculo_rut_asegurado[name=?]", "producto_vehiculo[rut_asegurado]"

      assert_select "input#producto_vehiculo_digito_verificador_asegurado[name=?]", "producto_vehiculo[digito_verificador_asegurado]"

      assert_select "input#producto_vehiculo_email_asegurado[name=?]", "producto_vehiculo[email_asegurado]"

      assert_select "input#producto_vehiculo_numero_asegurado[name=?]", "producto_vehiculo[numero_asegurado]"
    end
  end
end
