require 'spec_helper'

describe "map_authors/new.html.erb" do
  before(:each) do
    assign(:map_author, stub_model(MapAuthor,
      :nick => "MyString"
    ).as_new_record)
  end

  it "renders new map_author form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => map_authors_path, :method => "post" do
      assert_select "input#map_author_nick", :name => "map_author[nick]"
    end
  end
end
