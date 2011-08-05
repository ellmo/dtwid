require "spec_helper"

describe MapAuthorsController do
  describe "routing" do

    it "routes to #index" do
      get("/map_authors").should route_to("map_authors#index")
    end

    it "routes to #new" do
      get("/map_authors/new").should route_to("map_authors#new")
    end

    it "routes to #show" do
      get("/map_authors/1").should route_to("map_authors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/map_authors/1/edit").should route_to("map_authors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/map_authors").should route_to("map_authors#create")
    end

    it "routes to #update" do
      put("/map_authors/1").should route_to("map_authors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/map_authors/1").should route_to("map_authors#destroy", :id => "1")
    end

  end
end
