class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :authenticate_user!
    rescue_from CanCan::AccessDenied do |exception|
        respond_to do |format|
          format.json { head :forbidden, content_type: 'text/html' }
          format.html { redirect_to main_app.services_path, notice: exception.message }
          format.js   { head :forbidden, content_type: 'text/html' }
        end
    end
   
  

end
