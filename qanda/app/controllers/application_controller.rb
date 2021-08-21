class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end

    def redirect_to_login_if_not_logged_in
      unless user_signed_in?
        redirect_to new_user_session_url
      end
    end
end
