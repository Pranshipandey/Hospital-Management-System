class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :gender, :designation, :age, :role, :hospital_id])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :gender, :designation, :age, :role, :hospital_id])
  end  
end
