require 'spec_helper'

describe "SubmissionComments" do
  describe "GET /submission_comments" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get submission_comments_path
      response.status.should be(200)
    end
  end
end
