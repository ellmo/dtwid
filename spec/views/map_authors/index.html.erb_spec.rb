require 'spec_helper'

describe "map_authors/index.html.erb" do
  before(:each) do
    assign(:map_authors, [
      stub_model(MapAuthor,
        :nick => "Nick"
      ),
      stub_model(MapAuthor,
        :nick => "Nick"
      )
    ])
  end

  it "renders a list of map_authors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nick".to_s, :count => 2
  end
end
