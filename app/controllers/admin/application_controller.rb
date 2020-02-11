# All Administrate controllers inherit from this `Admin::ApplicationController`,
# making it the ideal place to put authentication logic or other
# before_actions.
#
# If you want to add pagination or other controller-level concerns,
# you're free to overwrite the RESTful controller actions.
module Admin
  class ApplicationController < Administrate::ApplicationController
    skip_before_action :verify_authenticity_token
    protect_from_forgery prepend: true
    before_action :authenticate_admin

    def authenticate_admin
      if current_user
        if current_user.email != 'contactvitalmarche@gmail.com'
          redirect_to root_url, alert: "Vous devez être un administrateur."
        else
          @authenticate_admin = "success"
        end
      else
        redirect_to root_url
      end
    end
  end
end
