require 'spec_helper'

describe "page_texts/edit.html.erb" do
  before(:each) do
    @page_text = assign(:page_text, stub_model(PageText,
      :name => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit page_text form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => page_text_path(@page_text), :method => "post" do
      assert_select "input#page_text_name", :name => "page_text[name]"
      assert_select "textarea#page_text_content", :name => "page_text[content]"
    end
  end
end
