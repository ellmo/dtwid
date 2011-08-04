require 'spec_helper'

describe "map_episodes/new.html.erb" do
  before(:each) do
    assign(:map_episode, stub_model(MapEpisode,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new map_episode form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => map_episodes_path, :method => "post" do
      assert_select "input#map_episode_name", :name => "map_episode[name]"
    end
  end
end
