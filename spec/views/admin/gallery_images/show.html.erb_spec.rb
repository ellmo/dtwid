require 'spec_helper'

describe "admin/gallery_images/show.html.erb" do
  before(:each) do
    @admin_gallery_image = assign(:admin_gallery_image, stub_model(Admin::GalleryImage,
      :user_id => 1,
      :title => "Title",
      :image_url => "Image Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Image Url/)
  end
end
