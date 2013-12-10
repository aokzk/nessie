class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_admin
    ActiveDecorator::Decorator.instance.decorate(super) unless super.nil?
    super
  end

  def current_user
    ActiveDecorator::Decorator.instance.decorate(super) unless super.nil?
    super
  end
end
