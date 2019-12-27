class ApplicationController < ActionController::Base
  auto_session_timeout 15.minutes
  before_action :authenticate_user!, except: [:home]

end
