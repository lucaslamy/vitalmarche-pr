class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!, except: [:home,:privacy,:contact_us]
  protect_from_forgery prepend: true,with: :exception, unless: -> { current_user!=nil }
end
