require 'rails_helper'

RSpec.describe "ProductoTecnologia", type: :request do
  describe "GET /producto_tecnologia" do
    it "works! (now write some real specs)" do
      get producto_tecnologia_path
      expect(response).to have_http_status(200)
    end
  end
end
