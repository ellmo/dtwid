require 'spec_helper'

describe "submission_comments/edit.html.erb" do
  before(:each) do
    @submission_comment = assign(:submission_comment, stub_model(SubmissionComment,
      :submission_id => 1,
      :user_id => 1,
      :comment => "MyString"
    ))
  end

  it "renders the edit submission_comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => submission_comments_path(@submission_comment), :method => "post" do
      assert_select "input#submission_comment_submission_id", :name => "submission_comment[submission_id]"
      assert_select "input#submission_comment_user_id", :name => "submission_comment[user_id]"
      assert_select "input#submission_comment_comment", :name => "submission_comment[comment]"
    end
  end
end
