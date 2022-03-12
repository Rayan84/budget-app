class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if:  :devise_controller?
  protected
  
  before_action :authenticate_user!
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def after_sign_up_path_for(resource)
    root_path
  end



end
