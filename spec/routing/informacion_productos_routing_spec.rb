require "rails_helper"

RSpec.describe InformacionProductosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/informacion_productos").to route_to("informacion_productos#index")
    end

    it "routes to #new" do
      expect(:get => "/informacion_productos/new").to route_to("informacion_productos#new")
    end

    it "routes to #show" do
      expect(:get => "/informacion_productos/1").to route_to("informacion_productos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/informacion_productos/1/edit").to route_to("informacion_productos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/informacion_productos").to route_to("informacion_productos#create")
    end

    it "routes to #update" do
      expect(:put => "/informacion_productos/1").to route_to("informacion_productos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/informacion_productos/1").to route_to("informacion_productos#destroy", :id => "1")
    end

  end
end
