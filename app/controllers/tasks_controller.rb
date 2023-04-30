class TasksController < ApplicationController
  before_action :require_login

  def index
    @tasks = Task.where(user_id: current_user.id)
    render :index
  end

   def show
    @task = Task.find_by(id: params[:id])
    render :show
   end



end
