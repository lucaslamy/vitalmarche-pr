class MainController < ApplicationController
  before_action :authenticate_user!, except: [:root]
  before_action :set_current_user

  def home
  end

  def set_current_user
    if current_user
      session[:user] = User.find(current_user.id)
    end
  end
end