require 'rails_helper'

RSpec.describe "informacion_productos/show", type: :view do
  before(:each) do
    @informacion_producto = assign(:informacion_producto, InformacionProducto.create!(
      :nombre => "Nombre",
      :tipo => "Tipo",
      :prima => 1,
      :valor_asegurado => 2,
      :duracion_meses => 3,
      :aseguradora_responsable => "Aseguradora Responsable"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Tipo/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Aseguradora Responsable/)
  end
end
