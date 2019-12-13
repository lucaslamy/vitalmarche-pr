class UserSpaceController < ApplicationController
  before_action :authenticate_user!, except: [:root]
  before_action :set_current_user

  def main
  end

  def album_space
  end

  def set_current_user
    if current_user
      session[:user] = User.find(current_user.id)
    end
  end
end