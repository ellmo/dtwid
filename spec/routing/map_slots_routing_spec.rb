require "spec_helper"

describe MapSlotsController do
  describe "routing" do

    it "routes to #index" do
      get("/map_slots").should route_to("map_slots#index")
    end

    it "routes to #new" do
      get("/map_slots/new").should route_to("map_slots#new")
    end

    it "routes to #show" do
      get("/map_slots/1").should route_to("map_slots#show", :id => "1")
    end

    it "routes to #edit" do
      get("/map_slots/1/edit").should route_to("map_slots#edit", :id => "1")
    end

    it "routes to #create" do
      post("/map_slots").should route_to("map_slots#create")
    end

    it "routes to #update" do
      put("/map_slots/1").should route_to("map_slots#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/map_slots/1").should route_to("map_slots#destroy", :id => "1")
    end

  end
end
