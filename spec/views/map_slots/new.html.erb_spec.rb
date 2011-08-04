require 'spec_helper'

describe "map_slots/new.html.erb" do
  before(:each) do
    assign(:map_slot, stub_model(MapSlot,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new map_slot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => map_slots_path, :method => "post" do
      assert_select "input#map_slot_name", :name => "map_slot[name]"
    end
  end
end
