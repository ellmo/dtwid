require 'spec_helper'

describe "map_slots/index.html.erb" do
  before(:each) do
    assign(:map_slots, [
      stub_model(MapSlot,
        :name => "Name"
      ),
      stub_model(MapSlot,
        :name => "Name"
      )
    ])
  end

  it "renders a list of map_slots" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
