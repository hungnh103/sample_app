class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

<<<<<<< HEAD
  def nguoi_dung_da_dang_nhap
    unless da_dang_nhap?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
=======
  def hello
    render html: "Hello, world!"
  end

  def logged_in_user
    return if logged_in?
    store_location
    flash[:danger] = "Xin hãy đăng nhập."
    redirect_to login_url
>>>>>>> f9a5091... Refactor logged_in_user method in application_controller.rb
  end
end
