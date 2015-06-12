require 'rails_helper'

RSpec.describe "empresas/index", type: :view do
  before(:each) do
    assign(:empresas, [
      Empresa.create!(
        :nombre => "Nombre",
        :rut => "Rut",
        :digito_verificador => "Digito Verificador",
        :giro => "Giro",
        :domicilio_comercial => "Domicilio Comercial",
        :representante_legal => "Representante Legal",
        :mail => "Mail",
        :telefono => "Telefono",
        :cuenta_bancria => "Cuenta Bancria",
        :banco => "Banco",
        :estado => 1
      ),
      Empresa.create!(
        :nombre => "Nombre",
        :rut => "Rut",
        :digito_verificador => "Digito Verificador",
        :giro => "Giro",
        :domicilio_comercial => "Domicilio Comercial",
        :representante_legal => "Representante Legal",
        :mail => "Mail",
        :telefono => "Telefono",
        :cuenta_bancria => "Cuenta Bancria",
        :banco => "Banco",
        :estado => 1
      )
    ])
  end

  it "renders a list of empresas" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Rut".to_s, :count => 2
    assert_select "tr>td", :text => "Digito Verificador".to_s, :count => 2
    assert_select "tr>td", :text => "Giro".to_s, :count => 2
    assert_select "tr>td", :text => "Domicilio Comercial".to_s, :count => 2
    assert_select "tr>td", :text => "Representante Legal".to_s, :count => 2
    assert_select "tr>td", :text => "Mail".to_s, :count => 2
    assert_select "tr>td", :text => "Telefono".to_s, :count => 2
    assert_select "tr>td", :text => "Cuenta Bancria".to_s, :count => 2
    assert_select "tr>td", :text => "Banco".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
