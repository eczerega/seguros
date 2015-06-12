require 'rails_helper'

RSpec.describe "MarcasAutos", type: :request do
  describe "GET /marcas_autos" do
    it "works! (now write some real specs)" do
      get marcas_autos_path
      expect(response).to have_http_status(200)
    end
  end
end
