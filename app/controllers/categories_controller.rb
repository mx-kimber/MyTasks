class CategoriesController < ApplicationController


  def index
    @categories = Category.all
    render :index
  end

  def show
    @category = Category.find_by(id: params[:id])
    render :show
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(name: params[:category][:name])
    if @category.save
      @task = Task.find(params[:task_id])
      @category_task = CategoryTask.new(category_id: @category.id, task_id: @task.id)
      if @category_task.save
        redirect_to category_path(@category)
      else
        render :new, status: :unprocessable_entity
      end
    else
      render :new, status: :unprocessable_entity
    end
  end



  def destroy
    @category = Category.find_by(id: params[:id])
    @category.destroy
    redirect_to categories_path
  end


end

