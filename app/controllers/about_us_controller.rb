class AboutUsController < ApplicationController
  def index
    @page_text = PageText.where(:name => "AboutUs").first
  end
end
