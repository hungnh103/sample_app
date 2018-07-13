class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def hello
    render html: "Hello, world!"
  end

  def logged_in_user
    return if logged_in?
    store_location
    flash[:danger] = "Xin hãy đăng nhập."
    redirect_to login_url
  end
end
