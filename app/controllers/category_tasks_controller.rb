class CategoryTasksController < ApplicationController
  before_action :authenticate_user

  def create
    @category = Category.find(params[:category_id])
    @task = Task.find(params[:task_id])
    @category.tasks << @task
    redirect_to task_path(@task)
  end

  def destroy
    @category = Category.find(params[:category_id])
    @task = Task.find(params[:task_id])
    @category.tasks.delete(@task)
    redirect_to task_path(@task)
  end
end

