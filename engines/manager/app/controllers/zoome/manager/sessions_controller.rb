require_dependency "zoome/manager/application_controller"

module Zoome::Manager
  class SessionsController < ApplicationController
    skip_before_action :authenticate_manager!, only: [:new, :create]

    def new
    end

    def create
      if _manager
        session[:manager] = _manager.id
        redirect_to managers.root_path
      else
        render :new
      end
    end

    private

    def _manager
      ::Manager.find_by(email: email)
    end

    def email
     session_params.dig(:email)
    end

    def password
     session_params.dig(:password)
    end

    def session_params
      params.require(:session).permit(:email, :password)
    end
  end
end
