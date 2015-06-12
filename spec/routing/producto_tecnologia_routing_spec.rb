require "rails_helper"

RSpec.describe ProductoTecnologiaController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/producto_tecnologia").to route_to("producto_tecnologia#index")
    end

    it "routes to #new" do
      expect(:get => "/producto_tecnologia/new").to route_to("producto_tecnologia#new")
    end

    it "routes to #show" do
      expect(:get => "/producto_tecnologia/1").to route_to("producto_tecnologia#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/producto_tecnologia/1/edit").to route_to("producto_tecnologia#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/producto_tecnologia").to route_to("producto_tecnologia#create")
    end

    it "routes to #update" do
      expect(:put => "/producto_tecnologia/1").to route_to("producto_tecnologia#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/producto_tecnologia/1").to route_to("producto_tecnologia#destroy", :id => "1")
    end

  end
end
