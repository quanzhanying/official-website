class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  layout :layout_by_resource

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end

  def require_is_admin
    unless current_user.admin?
      flash[:alert] = "You have no permission"
      redirect_to root_path
      end
  end
end
