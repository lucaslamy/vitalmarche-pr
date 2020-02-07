class MainController < ApplicationController
  before_action :set_current_user

  def home
    @public_albums = Album.where(private: false)
    @articles = Article.all
    @slideshow = Slideshow.all
    @text_join_us = Text.find_by(title:"rejoignez-nous")
    @picture_join_us = Picture.find_by(title:"rejoignez-nous")
    @text_contact_us = Text.find_by(title:"contactez-nous")
    @text_event = Text.find_by(title:"sorties")
    @text_where = Text.find_by(title:"cadre")
    @text_training = Text.find_by(title:"entraînements")
    @text_who_are_we = Text.find_by(title:"qui sommes nous")
    @text_home = Text.find_by(title:"qu'est-ce que la marche nordique")
    if Event.where("start_date <= ?", DateTime.now).where("end_date >= ?", DateTime.now).empty?
      @top_event = nil
    else
      @top_event = Event.where("start_date <= ?", DateTime.now).where("end_date >= ?", DateTime.now).order(:end_date).first
    end
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