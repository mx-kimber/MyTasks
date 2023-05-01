class CategoryTasksController < ApplicationController
  before_action :authenticate_user

  def create
    @category = Category.find(params[:category_id])
    @category_task = @category.category_tasks.new(task_id: params[:task_id])

    if @category_task.save
      redirect_to category_path(@category)
    else
      render :new, status: :unprocessable_entity
    end
  end


  def destroy
    @category = Category.find(params[:category_id])
    @task = Task.find(params[:task_id])
    @category.tasks.delete(@task)
    redirect_to task_path(@task)
  end
end

