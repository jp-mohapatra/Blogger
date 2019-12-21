class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout "cosmo"

  before_action :configure_permitted_parameters, if: :devise_controller?
   

 protected
  def after_sign_in_path_for(resource)
    if !resource.is_admin      
        root_path
    else
      root_path
    end
  end

 
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:email, :password, :dob, :address, :gender, :is_admin])
  end
end
