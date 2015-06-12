require 'rails_helper'

RSpec.describe "empresas/new", type: :view do
  before(:each) do
    assign(:empresa, Empresa.new(
      :nombre => "MyString",
      :rut => "MyString",
      :digito_verificador => "MyString",
      :giro => "MyString",
      :domicilio_comercial => "MyString",
      :representante_legal => "MyString",
      :mail => "MyString",
      :telefono => "MyString",
      :cuenta_bancria => "MyString",
      :banco => "MyString",
      :estado => 1
    ))
  end

  it "renders new empresa form" do
    render

    assert_select "form[action=?][method=?]", empresas_path, "post" do

      assert_select "input#empresa_nombre[name=?]", "empresa[nombre]"

      assert_select "input#empresa_rut[name=?]", "empresa[rut]"

      assert_select "input#empresa_digito_verificador[name=?]", "empresa[digito_verificador]"

      assert_select "input#empresa_giro[name=?]", "empresa[giro]"

      assert_select "input#empresa_domicilio_comercial[name=?]", "empresa[domicilio_comercial]"

      assert_select "input#empresa_representante_legal[name=?]", "empresa[representante_legal]"

      assert_select "input#empresa_mail[name=?]", "empresa[mail]"

      assert_select "input#empresa_telefono[name=?]", "empresa[telefono]"

      assert_select "input#empresa_cuenta_bancria[name=?]", "empresa[cuenta_bancria]"

      assert_select "input#empresa_banco[name=?]", "empresa[banco]"

      assert_select "input#empresa_estado[name=?]", "empresa[estado]"
    end
  end
end
