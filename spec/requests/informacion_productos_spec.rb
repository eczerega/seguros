require 'rails_helper'

RSpec.describe "InformacionProductos", type: :request do
  describe "GET /informacion_productos" do
    it "works! (now write some real specs)" do
      get informacion_productos_path
      expect(response).to have_http_status(200)
    end
  end
end
