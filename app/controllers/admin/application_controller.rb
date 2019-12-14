# All Administrate controllers inherit from this `Admin::ApplicationController`,
# making it the ideal place to put authentication logic or other
# before_actions.
#
# If you want to add pagination or other controller-level concerns,
# you're free to overwrite the RESTful controller actions.
module Admin
  class ApplicationController < Administrate::ApplicationController
   before_action :authenticate_admin

    def authenticate_admin
      if current_user
        if current_user.email != 'admin@admin.fr'
          redirect_to root_url, alert: "Vous devez être un administrateur."
        end
      else
        redirect_to root_url
      end
    end
  end
end
