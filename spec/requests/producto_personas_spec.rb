require 'rails_helper'

RSpec.describe "ProductoPersonas", type: :request do
  describe "GET /producto_personas" do
    it "works! (now write some real specs)" do
      get producto_personas_path
      expect(response).to have_http_status(200)
    end
  end
end
