require "rails_helper"

RSpec.describe ProductoInmueblesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/producto_inmuebles").to route_to("producto_inmuebles#index")
    end

    it "routes to #new" do
      expect(:get => "/producto_inmuebles/new").to route_to("producto_inmuebles#new")
    end

    it "routes to #show" do
      expect(:get => "/producto_inmuebles/1").to route_to("producto_inmuebles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/producto_inmuebles/1/edit").to route_to("producto_inmuebles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/producto_inmuebles").to route_to("producto_inmuebles#create")
    end

    it "routes to #update" do
      expect(:put => "/producto_inmuebles/1").to route_to("producto_inmuebles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/producto_inmuebles/1").to route_to("producto_inmuebles#destroy", :id => "1")
    end

  end
end
