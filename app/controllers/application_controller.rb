class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :checkAuth, :except => [:signup, :login, :signin, :forgotpassword]

  def checkAuth
    if session[:user_id].blank?
      redirect_to login_path
    end
  end
end
