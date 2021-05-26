class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protect_from_forgery with: :exception
  
  def after_sign_in_path_for(resource)
    new_answers_path
  end
  
  protected
  def configure_permitted_parameters
    added_attrs = [:id, :last_name, :first_name]
    devise_parameter_sanitizer.permit(:sign_in, keys: [:id])
    devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)
  end
end


