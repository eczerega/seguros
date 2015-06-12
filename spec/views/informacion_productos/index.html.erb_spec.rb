require 'rails_helper'

RSpec.describe "informacion_productos/index", type: :view do
  before(:each) do
    assign(:informacion_productos, [
      InformacionProducto.create!(
        :nombre => "Nombre",
        :tipo => "Tipo",
        :prima => 1,
        :valor_asegurado => 2,
        :duracion_meses => 3,
        :aseguradora_responsable => "Aseguradora Responsable"
      ),
      InformacionProducto.create!(
        :nombre => "Nombre",
        :tipo => "Tipo",
        :prima => 1,
        :valor_asegurado => 2,
        :duracion_meses => 3,
        :aseguradora_responsable => "Aseguradora Responsable"
      )
    ])
  end

  it "renders a list of informacion_productos" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Aseguradora Responsable".to_s, :count => 2
  end
end
