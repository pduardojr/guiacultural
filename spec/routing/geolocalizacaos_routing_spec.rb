require "rails_helper"

RSpec.describe GeolocalizacaosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/geolocalizacaos").to route_to("geolocalizacaos#index")
    end

    it "routes to #new" do
      expect(:get => "/geolocalizacaos/new").to route_to("geolocalizacaos#new")
    end

    it "routes to #show" do
      expect(:get => "/geolocalizacaos/1").to route_to("geolocalizacaos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/geolocalizacaos/1/edit").to route_to("geolocalizacaos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/geolocalizacaos").to route_to("geolocalizacaos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/geolocalizacaos/1").to route_to("geolocalizacaos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/geolocalizacaos/1").to route_to("geolocalizacaos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/geolocalizacaos/1").to route_to("geolocalizacaos#destroy", :id => "1")
    end

  end
end
