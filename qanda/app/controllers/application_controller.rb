class ApplicationController < ActionController::Base

  protected

    def redirect_to_login_if_not_logged_in
      unless user_signed_in?
        redirect_to new_user_session_url
      end
    end
end
