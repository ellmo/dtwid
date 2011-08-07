require 'spec_helper'

describe "submission_comments/show.html.erb" do
  before(:each) do
    @submission_comment = assign(:submission_comment, stub_model(SubmissionComment,
      :submission_id => 1,
      :user_id => 1,
      :comment => "Comment"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Comment/)
  end
end
