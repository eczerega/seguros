require 'rails_helper'

RSpec.describe "marcas_autos/edit", type: :view do
  before(:each) do
    @marcas_auto = assign(:marcas_auto, MarcasAuto.create!(
      :marca => "MyString"
    ))
  end

  it "renders the edit marcas_auto form" do
    render

    assert_select "form[action=?][method=?]", marcas_auto_path(@marcas_auto), "post" do

      assert_select "input#marcas_auto_marca[name=?]", "marcas_auto[marca]"
    end
  end
end
