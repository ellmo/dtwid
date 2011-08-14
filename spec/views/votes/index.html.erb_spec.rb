require 'spec_helper'

describe "votes/index.html.erb" do
  before(:each) do
    assign(:votes, [
      stub_model(Vote,
        :user_id => 1,
        :submission_id => 1,
        :points => 1,
        :comment => "MyText"
      ),
      stub_model(Vote,
        :user_id => 1,
        :submission_id => 1,
        :points => 1,
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of votes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
