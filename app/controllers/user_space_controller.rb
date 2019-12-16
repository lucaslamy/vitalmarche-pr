class UserSpaceController < ApplicationController
  before_action :authenticate_user!, except: [:root]
  before_action :set_current_user

  def main
  end

  def admin_space
  end

  def simple_user_space
  end

  def set_current_user
    if current_user
      session[:user] = User.find(current_user.id)
    end
  end
end