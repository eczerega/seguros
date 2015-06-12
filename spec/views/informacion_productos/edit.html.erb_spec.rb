require 'rails_helper'

RSpec.describe "informacion_productos/edit", type: :view do
  before(:each) do
    @informacion_producto = assign(:informacion_producto, InformacionProducto.create!(
      :nombre => "MyString",
      :tipo => "MyString",
      :prima => 1,
      :valor_asegurado => 1,
      :duracion_meses => 1,
      :aseguradora_responsable => "MyString"
    ))
  end

  it "renders the edit informacion_producto form" do
    render

    assert_select "form[action=?][method=?]", informacion_producto_path(@informacion_producto), "post" do

      assert_select "input#informacion_producto_nombre[name=?]", "informacion_producto[nombre]"

      assert_select "input#informacion_producto_tipo[name=?]", "informacion_producto[tipo]"

      assert_select "input#informacion_producto_prima[name=?]", "informacion_producto[prima]"

      assert_select "input#informacion_producto_valor_asegurado[name=?]", "informacion_producto[valor_asegurado]"

      assert_select "input#informacion_producto_duracion_meses[name=?]", "informacion_producto[duracion_meses]"

      assert_select "input#informacion_producto_aseguradora_responsable[name=?]", "informacion_producto[aseguradora_responsable]"
    end
  end
end
