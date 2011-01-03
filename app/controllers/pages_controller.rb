class PagesController < ApplicationController
  def show
    render :template => current_page
  end
  
  protected
    def current_page
      "pages/#{params[:id].to_s.downcase}"
    end
end