require "spec_helper"

describe PageTextsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/page_texts" }.should route_to(:controller => "page_texts", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/page_texts/new" }.should route_to(:controller => "page_texts", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/page_texts/1" }.should route_to(:controller => "page_texts", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/page_texts/1/edit" }.should route_to(:controller => "page_texts", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/page_texts" }.should route_to(:controller => "page_texts", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/page_texts/1" }.should route_to(:controller => "page_texts", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/page_texts/1" }.should route_to(:controller => "page_texts", :action => "destroy", :id => "1")
    end

  end
end
