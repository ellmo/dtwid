require 'spec_helper'

describe "map_episodes/show.html.erb" do
  before(:each) do
    @map_episode = assign(:map_episode, stub_model(MapEpisode,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
