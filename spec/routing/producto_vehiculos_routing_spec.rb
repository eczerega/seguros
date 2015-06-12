require "rails_helper"

RSpec.describe ProductoVehiculosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/producto_vehiculos").to route_to("producto_vehiculos#index")
    end

    it "routes to #new" do
      expect(:get => "/producto_vehiculos/new").to route_to("producto_vehiculos#new")
    end

    it "routes to #show" do
      expect(:get => "/producto_vehiculos/1").to route_to("producto_vehiculos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/producto_vehiculos/1/edit").to route_to("producto_vehiculos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/producto_vehiculos").to route_to("producto_vehiculos#create")
    end

    it "routes to #update" do
      expect(:put => "/producto_vehiculos/1").to route_to("producto_vehiculos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/producto_vehiculos/1").to route_to("producto_vehiculos#destroy", :id => "1")
    end

  end
end
