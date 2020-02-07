class UserSpaceController < ApplicationController
  before_action :set_current_user

  def main
    @private_albums = Album.where(private: true)
    @pdfs = Pdf.all
    @form = Link.find_by(title: "Questionnaire")
    if Pdf.where(latest: true).empty?
      @on_top_pdf = Pdf.all.order(:id).last
    else
      @on_top_pdf = Pdf.where(latest: true).order(:id).last
    end
    @picture_form = Picture.find_by(title:"questionnaire")
    @text_form = Text.find_by(title:"questionnaire")
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

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    if @user.destroy
      flash[:danger] = 'Compte supprimé'
      redirect_to root_url
    end
  end

end