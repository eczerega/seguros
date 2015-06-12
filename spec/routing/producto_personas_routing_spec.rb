require "rails_helper"

RSpec.describe ProductoPersonasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/producto_personas").to route_to("producto_personas#index")
    end

    it "routes to #new" do
      expect(:get => "/producto_personas/new").to route_to("producto_personas#new")
    end

    it "routes to #show" do
      expect(:get => "/producto_personas/1").to route_to("producto_personas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/producto_personas/1/edit").to route_to("producto_personas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/producto_personas").to route_to("producto_personas#create")
    end

    it "routes to #update" do
      expect(:put => "/producto_personas/1").to route_to("producto_personas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/producto_personas/1").to route_to("producto_personas#destroy", :id => "1")
    end

  end
end
