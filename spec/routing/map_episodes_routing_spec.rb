require "spec_helper"

describe MapEpisodesController do
  describe "routing" do

    it "routes to #index" do
      get("/map_episodes").should route_to("map_episodes#index")
    end

    it "routes to #new" do
      get("/map_episodes/new").should route_to("map_episodes#new")
    end

    it "routes to #show" do
      get("/map_episodes/1").should route_to("map_episodes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/map_episodes/1/edit").should route_to("map_episodes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/map_episodes").should route_to("map_episodes#create")
    end

    it "routes to #update" do
      put("/map_episodes/1").should route_to("map_episodes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/map_episodes/1").should route_to("map_episodes#destroy", :id => "1")
    end

  end
end
