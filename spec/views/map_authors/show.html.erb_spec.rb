require 'spec_helper'

describe "map_authors/show.html.erb" do
  before(:each) do
    @map_author = assign(:map_author, stub_model(MapAuthor,
      :nick => "Nick"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nick/)
  end
end
