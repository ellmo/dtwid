require 'spec_helper'

describe "map_slots/show.html.erb" do
  before(:each) do
    @map_slot = assign(:map_slot, stub_model(MapSlot,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
