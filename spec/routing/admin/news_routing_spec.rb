require "spec_helper"

describe Admin::NewsController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/news").should route_to("admin/news#index")
    end

    it "routes to #new" do
      get("/admin/news/new").should route_to("admin/news#new")
    end

    it "routes to #show" do
      get("/admin/news/1").should route_to("admin/news#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/news/1/edit").should route_to("admin/news#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/news").should route_to("admin/news#create")
    end

    it "routes to #update" do
      put("/admin/news/1").should route_to("admin/news#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/news/1").should route_to("admin/news#destroy", :id => "1")
    end

  end
end
