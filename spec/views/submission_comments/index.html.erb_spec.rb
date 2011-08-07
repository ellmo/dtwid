require 'spec_helper'

describe "submission_comments/index.html.erb" do
  before(:each) do
    assign(:submission_comments, [
      stub_model(SubmissionComment,
        :submission_id => 1,
        :user_id => 1,
        :comment => "Comment"
      ),
      stub_model(SubmissionComment,
        :submission_id => 1,
        :user_id => 1,
        :comment => "Comment"
      )
    ])
  end

  it "renders a list of submission_comments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
  end
end
