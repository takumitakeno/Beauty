class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def usersign_in_path_for(resource)
    managements_path
  end
  def user_sign_out_path_for(resource)
    root_path
  end
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up)
  end
  

end
