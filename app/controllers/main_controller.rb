class MainController < ApplicationController
  before_action :set_current_user

  def home
    @albums = Album.all
    @articles = Article.all
  end

  def set_current_user
    if current_user
      session[:user] = User.find(current_user.id)
    end
  end

  def contact_us
    email = params[:email]
    name = params[:name]
    message = params[:message]
    ApplicationMailer.contact_email(email,name,message).deliver
    redirect_to root_path
  end

end