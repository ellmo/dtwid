require "spec_helper"

describe Admin::GalleryImagesController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/gallery_images").should route_to("admin/gallery_images#index")
    end

    it "routes to #new" do
      get("/admin/gallery_images/new").should route_to("admin/gallery_images#new")
    end

    it "routes to #show" do
      get("/admin/gallery_images/1").should route_to("admin/gallery_images#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/gallery_images/1/edit").should route_to("admin/gallery_images#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/gallery_images").should route_to("admin/gallery_images#create")
    end

    it "routes to #update" do
      put("/admin/gallery_images/1").should route_to("admin/gallery_images#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/gallery_images/1").should route_to("admin/gallery_images#destroy", :id => "1")
    end

  end
end
