require 'spec_helper'

describe "submissions/index.html.erb" do
  before(:each) do
    assign(:submissions, [
      stub_model(Submission,
        :name => "Name",
        :episode_id => 1,
        :slot_id => 1,
        :author_id => 1,
        :link => "Link"
      ),
      stub_model(Submission,
        :name => "Name",
        :episode_id => 1,
        :slot_id => 1,
        :author_id => 1,
        :link => "Link"
      )
    ])
  end

  it "renders a list of submissions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Link".to_s, :count => 2
  end
end
