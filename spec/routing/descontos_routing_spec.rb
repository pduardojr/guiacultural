require "rails_helper"

RSpec.describe DescontosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/descontos").to route_to("descontos#index")
    end

    it "routes to #new" do
      expect(:get => "/descontos/new").to route_to("descontos#new")
    end

    it "routes to #show" do
      expect(:get => "/descontos/1").to route_to("descontos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/descontos/1/edit").to route_to("descontos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/descontos").to route_to("descontos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/descontos/1").to route_to("descontos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/descontos/1").to route_to("descontos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/descontos/1").to route_to("descontos#destroy", :id => "1")
    end

  end
end
