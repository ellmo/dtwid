require 'spec_helper'

describe "map_episodes/edit.html.erb" do
  before(:each) do
    @map_episode = assign(:map_episode, stub_model(MapEpisode,
      :name => "MyString"
    ))
  end

  it "renders the edit map_episode form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => map_episodes_path(@map_episode), :method => "post" do
      assert_select "input#map_episode_name", :name => "map_episode[name]"
    end
  end
end
