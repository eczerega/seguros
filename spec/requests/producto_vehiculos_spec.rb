require 'rails_helper'

RSpec.describe "ProductoVehiculos", type: :request do
  describe "GET /producto_vehiculos" do
    it "works! (now write some real specs)" do
      get producto_vehiculos_path
      expect(response).to have_http_status(200)
    end
  end
end
