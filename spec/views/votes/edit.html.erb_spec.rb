require 'spec_helper'

describe "votes/edit.html.erb" do
  before(:each) do
    @vote = assign(:vote, stub_model(Vote,
      :user_id => 1,
      :submission_id => 1,
      :points => 1,
      :comment => "MyText"
    ))
  end

  it "renders the edit vote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => votes_path(@vote), :method => "post" do
      assert_select "input#vote_user_id", :name => "vote[user_id]"
      assert_select "input#vote_submission_id", :name => "vote[submission_id]"
      assert_select "input#vote_points", :name => "vote[points]"
      assert_select "textarea#vote_comment", :name => "vote[comment]"
    end
  end
end
