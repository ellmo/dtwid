require 'spec_helper'

describe "admin/gallery_images/edit.html.erb" do
  before(:each) do
    @admin_gallery_image = assign(:admin_gallery_image, stub_model(Admin::GalleryImage,
      :user_id => 1,
      :title => "MyString",
      :image_url => "MyString"
    ))
  end

  it "renders the edit admin_gallery_image form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_gallery_images_path(@admin_gallery_image), :method => "post" do
      assert_select "input#admin_gallery_image_user_id", :name => "admin_gallery_image[user_id]"
      assert_select "input#admin_gallery_image_title", :name => "admin_gallery_image[title]"
      assert_select "input#admin_gallery_image_image_url", :name => "admin_gallery_image[image_url]"
    end
  end
end
