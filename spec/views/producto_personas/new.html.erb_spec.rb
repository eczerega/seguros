require 'rails_helper'

RSpec.describe "producto_personas/new", type: :view do
  before(:each) do
    assign(:producto_persona, ProductoPersona.new(
      :producto => "MyString",
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

  it "renders new producto_persona form" do
    render

    assert_select "form[action=?][method=?]", producto_personas_path, "post" do

      assert_select "input#producto_persona_producto[name=?]", "producto_persona[producto]"

      assert_select "input#producto_persona_nombre_comprador[name=?]", "producto_persona[nombre_comprador]"

      assert_select "input#producto_persona_apellido_comprador[name=?]", "producto_persona[apellido_comprador]"

      assert_select "input#producto_persona_rut_comprador[name=?]", "producto_persona[rut_comprador]"

      assert_select "input#producto_persona_digito_verifiador_comprador[name=?]", "producto_persona[digito_verifiador_comprador]"

      assert_select "input#producto_persona_email_comprador[name=?]", "producto_persona[email_comprador]"

      assert_select "input#producto_persona_numero_comprador[name=?]", "producto_persona[numero_comprador]"

      assert_select "input#producto_persona_nombre_asegurado[name=?]", "producto_persona[nombre_asegurado]"

      assert_select "input#producto_persona_apellido_asegurado[name=?]", "producto_persona[apellido_asegurado]"

      assert_select "input#producto_persona_rut_asegurado[name=?]", "producto_persona[rut_asegurado]"

      assert_select "input#producto_persona_digito_verificador_asegurado[name=?]", "producto_persona[digito_verificador_asegurado]"

      assert_select "input#producto_persona_email_asegurado[name=?]", "producto_persona[email_asegurado]"

      assert_select "input#producto_persona_numero_asegurado[name=?]", "producto_persona[numero_asegurado]"
    end
  end
end
