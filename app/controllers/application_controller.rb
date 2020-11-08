class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  helper_method :superadmin_role!

  def superadmin_role!
    if current_user&.superadmin_role # rubocop:todo Lint/EmptyConditionalBody
    else
      flash[:notice] = 'You dont have permission to view that page'
      redirect_to root_path
    end
  end
end
