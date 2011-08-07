require 'spec_helper'

describe "admin/news/new.html.erb" do
  before(:each) do
    assign(:admin_news, stub_model(Admin::News,
      :title => "MyString",
      :content => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new admin_news form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_news_index_path, :method => "post" do
      assert_select "input#admin_news_title", :name => "admin_news[title]"
      assert_select "input#admin_news_content", :name => "admin_news[content]"
      assert_select "input#admin_news_user_id", :name => "admin_news[user_id]"
    end
  end
end
