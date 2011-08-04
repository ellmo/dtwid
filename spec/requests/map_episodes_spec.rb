require 'spec_helper'

describe "MapEpisodes" do
  describe "GET /map_episodes" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get map_episodes_path
      response.status.should be(200)
    end
  end
end
