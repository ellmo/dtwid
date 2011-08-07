require "spec_helper"

describe SubmissionCommentsController do
  describe "routing" do

    it "routes to #index" do
      get("/submission_comments").should route_to("submission_comments#index")
    end

    it "routes to #new" do
      get("/submission_comments/new").should route_to("submission_comments#new")
    end

    it "routes to #show" do
      get("/submission_comments/1").should route_to("submission_comments#show", :id => "1")
    end

    it "routes to #edit" do
      get("/submission_comments/1/edit").should route_to("submission_comments#edit", :id => "1")
    end

    it "routes to #create" do
      post("/submission_comments").should route_to("submission_comments#create")
    end

    it "routes to #update" do
      put("/submission_comments/1").should route_to("submission_comments#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/submission_comments/1").should route_to("submission_comments#destroy", :id => "1")
    end

  end
end
