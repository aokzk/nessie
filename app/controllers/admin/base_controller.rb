class Admin::BaseController < ApplicationController
  layout 'admin'
  before_action :authenticate_admin!

  def after_sign_out_path_for(resource_or_scope)
    admin_root_path
  end
end
