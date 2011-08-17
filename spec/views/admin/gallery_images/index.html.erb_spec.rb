require 'spec_helper'

describe "admin/gallery_images/index.html.erb" do
  before(:each) do
    assign(:admin_gallery_images, [
      stub_model(Admin::GalleryImage,
        :user_id => 1,
        :title => "Title",
        :image_url => "Image Url"
      ),
      stub_model(Admin::GalleryImage,
        :user_id => 1,
        :title => "Title",
        :image_url => "Image Url"
      )
    ])
  end

  it "renders a list of admin/gallery_images" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
  end
end
