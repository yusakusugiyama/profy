class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # sign_inのときに、group_keyも許可する
    devise_parameter_sanitizer.for(:sign_in) << :group_key
    # sign_upのときに、group_keyも許可する
    devise_parameter_sanitizer.for(:sign_up) << :group_key
    #account_updateのときに、group_keyも許可する
    devise_parameter_sanitizer.for(:account_update) << :group_key
  end
end
