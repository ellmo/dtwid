require 'spec_helper'

describe "admin/news/edit.html.erb" do
  before(:each) do
    @admin_news = assign(:admin_news, stub_model(Admin::News,
      :title => "MyString",
      :content => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit admin_news form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_news_index_path(@admin_news), :method => "post" do
      assert_select "input#admin_news_title", :name => "admin_news[title]"
      assert_select "input#admin_news_content", :name => "admin_news[content]"
      assert_select "input#admin_news_user_id", :name => "admin_news[user_id]"
    end
  end
end
