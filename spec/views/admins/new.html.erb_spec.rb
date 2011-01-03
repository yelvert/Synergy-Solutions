require 'spec_helper'

describe "admins/new.html.erb" do
  before(:each) do
    assign(:admin, stub_model(Admin).as_new_record)
  end

  it "renders new admin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admins_path, :method => "post" do
    end
  end
end
