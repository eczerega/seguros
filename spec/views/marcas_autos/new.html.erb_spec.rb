require 'rails_helper'

RSpec.describe "marcas_autos/new", type: :view do
  before(:each) do
    assign(:marcas_auto, MarcasAuto.new(
      :marca => "MyString"
    ))
  end

  it "renders new marcas_auto form" do
    render

    assert_select "form[action=?][method=?]", marcas_autos_path, "post" do

      assert_select "input#marcas_auto_marca[name=?]", "marcas_auto[marca]"
    end
  end
end
