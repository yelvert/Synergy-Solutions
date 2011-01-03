require 'spec_helper'

describe "page_texts/index.html.erb" do
  before(:each) do
    assign(:page_texts, [
      stub_model(PageText,
        :name => "Name",
        :content => "MyText"
      ),
      stub_model(PageText,
        :name => "Name",
        :content => "MyText"
      )
    ])
  end

  it "renders a list of page_texts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
