require 'rails_helper'

RSpec.describe "marcas_autos/index", type: :view do
  before(:each) do
    assign(:marcas_autos, [
      MarcasAuto.create!(
        :marca => "Marca"
      ),
      MarcasAuto.create!(
        :marca => "Marca"
      )
    ])
  end

  it "renders a list of marcas_autos" do
    render
    assert_select "tr>td", :text => "Marca".to_s, :count => 2
  end
end
