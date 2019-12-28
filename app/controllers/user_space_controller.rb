class UserSpaceController < ApplicationController
  auto_session_timeout 15.minutes
  before_action :set_current_user

  def main
    @events = Event.all
    @next_month = Date.today + 1.month
    @next_next_month = Date.today + 2.month
    @pdfs = Pdf.all
    @form = Link.find_by(title: "Questionnaire")
    @pop_up = Event.where(pop_up: true).where("date > ?", DateTime.now).order(:date).first
  end

  def admin_space
    #Nothing special to do here, just render the view
  end

  def simple_user_space
    #Nothing special to do here, just render the view
  end

  def set_current_user
    if current_user
      session[:user] = User.find(current_user.id)
    end
  end
end