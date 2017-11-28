require "rails_helper"

RSpec.describe LinksListsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/links_lists").to route_to("links_lists#index")
    end


    it "routes to #show" do
      expect(:get => "/links_lists/1").to route_to("links_lists#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/links_lists").to route_to("links_lists#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/links_lists/1").to route_to("links_lists#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/links_lists/1").to route_to("links_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/links_lists/1").to route_to("links_lists#destroy", :id => "1")
    end

  end
end
