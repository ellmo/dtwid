require 'spec_helper'

describe "map_authors/edit.html.erb" do
  before(:each) do
    @map_author = assign(:map_author, stub_model(MapAuthor,
      :nick => "MyString"
    ))
  end

  it "renders the edit map_author form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => map_authors_path(@map_author), :method => "post" do
      assert_select "input#map_author_nick", :name => "map_author[nick]"
    end
  end
end
