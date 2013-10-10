class Admins::RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters

  def new
    if Admin.empty?
      super
    else
      redirect_to admin_root_path
    end
  end

  def create
    if Admin.empty?
      super
    else
      redirect_to admin_root_path
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :email
  end

  def after_sign_up_path_for(resource)
    admin_root_path
  end
end
