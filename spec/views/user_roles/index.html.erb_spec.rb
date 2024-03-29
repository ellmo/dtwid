require 'spec_helper'

describe "user_roles/index.html.erb" do
  before(:each) do
    assign(:user_roles, [
      stub_model(UserRole,
        :name => "Name"
      ),
      stub_model(UserRole,
        :name => "Name"
      )
    ])
  end

  it "renders a list of user_roles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
