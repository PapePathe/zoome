module Zoome
  module Manager
    class ApplicationController < ActionController::Base
      before_action :authenticate_manager!
      helper_method :current_manager

      protected

      def current_manager
        ::Manager.find(session[:manager]) if session[:manager]
      end

      def authenticate_manager!
        unless current_manager
          redirect_to connexion_path, warning: 'Merci de vous authentifier'
        end
      end
    end
  end
end
