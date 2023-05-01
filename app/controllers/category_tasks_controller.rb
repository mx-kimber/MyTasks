class CategoryTasksController < ApplicationController

  def create
    @category = Category.find(params[:category_id])
    @task = Task.find(params[:task_id])
    @category.tasks << @task
    redirect_to @task
  end

  def destroy
    @category = Category.find(params[:category_id])
    @task = Task.find(params[:task_id])
    @category.tasks.delete(@task)
    redirect_to @task
  end
end

