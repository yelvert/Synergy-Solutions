require 'spec_helper'

describe "admins/show.html.erb" do
  before(:each) do
    @admin = assign(:admin, stub_model(Admin))
  end

  it "renders attributes in <p>" do
    render
  end
end
