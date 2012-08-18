class SessionsController < ApplicationController
  skip_before_filter :redirect_page

  layout 'session'

  def new
  end

  def create
  end
end
