require 'rails_helper'

RSpec.describe "empresas/show", type: :view do
  before(:each) do
    @empresa = assign(:empresa, Empresa.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Rut/)
    expect(rendered).to match(/Digito Verificador/)
    expect(rendered).to match(/Giro/)
    expect(rendered).to match(/Domicilio Comercial/)
    expect(rendered).to match(/Representante Legal/)
    expect(rendered).to match(/Mail/)
    expect(rendered).to match(/Telefono/)
    expect(rendered).to match(/Cuenta Bancria/)
    expect(rendered).to match(/Banco/)
    expect(rendered).to match(/1/)
  end
end
