require "rails_helper"

RSpec.describe MarcasAutosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/marcas_autos").to route_to("marcas_autos#index")
    end

    it "routes to #new" do
      expect(:get => "/marcas_autos/new").to route_to("marcas_autos#new")
    end

    it "routes to #show" do
      expect(:get => "/marcas_autos/1").to route_to("marcas_autos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/marcas_autos/1/edit").to route_to("marcas_autos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/marcas_autos").to route_to("marcas_autos#create")
    end

    it "routes to #update" do
      expect(:put => "/marcas_autos/1").to route_to("marcas_autos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/marcas_autos/1").to route_to("marcas_autos#destroy", :id => "1")
    end

  end
end
