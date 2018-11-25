class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :place, :icon])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :place, :icon, :about_me])
  end
end
