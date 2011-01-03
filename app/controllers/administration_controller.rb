class AdministrationController < ApplicationController
  before_filter :authenticate_admin!
  layout 'administration'
  def index
  end
end
