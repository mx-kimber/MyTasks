class ApplicationController < ActionController::Base
  before_action :current_user

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authenticate_user
    redirect_to '/login', status: :see_other unless current_user
  end

  def require_login
    unless current_user
      flash[:error] = "You must log in for access."
      redirect_to login_path
    end
  end


def task_params
  params.require(:task).permit(:title, :description, :completed, :category_ids, :deadline)
        .transform_values{ |v| v.is_a?(String) && v.match?(/\A\d{4}-\d{2}-\d{2}T\d{2}:\d{2}\z/) ? DateTime.parse(v) : v }
end



def category_params
  params.require(:category).permit(:name)
end
end

