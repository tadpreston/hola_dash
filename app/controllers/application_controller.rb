class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :redirect_page

  def redirect_page
    redirect_to sign_in_path
  end
end
