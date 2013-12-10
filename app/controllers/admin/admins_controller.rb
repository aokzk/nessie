class Admin::AdminsController < Admin::BaseController
  def index
    @admins = Admin.order(:id).page params[:page]
  end
end
