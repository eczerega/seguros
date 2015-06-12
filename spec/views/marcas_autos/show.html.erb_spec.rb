require 'rails_helper'

RSpec.describe "marcas_autos/show", type: :view do
  before(:each) do
    @marcas_auto = assign(:marcas_auto, MarcasAuto.create!(
      :marca => "Marca"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Marca/)
  end
end
