require 'spec_helper'

describe "map_slots/edit.html.erb" do
  before(:each) do
    @map_slot = assign(:map_slot, stub_model(MapSlot,
      :name => "MyString"
    ))
  end

  it "renders the edit map_slot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => map_slots_path(@map_slot), :method => "post" do
      assert_select "input#map_slot_name", :name => "map_slot[name]"
    end
  end
end
