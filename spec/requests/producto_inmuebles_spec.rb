require 'rails_helper'

RSpec.describe "ProductoInmuebles", type: :request do
  describe "GET /producto_inmuebles" do
    it "works! (now write some real specs)" do
      get producto_inmuebles_path
      expect(response).to have_http_status(200)
    end
  end
end
