require 'spec_helper'

describe "submissions/edit.html.erb" do
  before(:each) do
    @submission = assign(:submission, stub_model(Submission,
      :name => "MyString",
      :episode_id => 1,
      :slot_id => 1,
      :author_id => 1,
      :link => "MyString"
    ))
  end

  it "renders the edit submission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => submissions_path(@submission), :method => "post" do
      assert_select "input#submission_name", :name => "submission[name]"
      assert_select "input#submission_episode_id", :name => "submission[episode_id]"
      assert_select "input#submission_slot_id", :name => "submission[slot_id]"
      assert_select "input#submission_author_id", :name => "submission[author_id]"
      assert_select "input#submission_link", :name => "submission[link]"
    end
  end
end
