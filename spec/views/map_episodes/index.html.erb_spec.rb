require 'spec_helper'

describe "map_episodes/index.html.erb" do
  before(:each) do
    assign(:map_episodes, [
      stub_model(MapEpisode,
        :name => "Name"
      ),
      stub_model(MapEpisode,
        :name => "Name"
      )
    ])
  end

  it "renders a list of map_episodes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
