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
<<<<<<< HEAD
    @category = Category.new(category_params)
=======
    @category = Category.new(name: params[:category][:name])
>>>>>>> aa85b1aef0da886ff92531d64b3ca97bcc478830
    if @category.save
      # @task = Task.find(params[:task_id])
      # @category_task = CategoryTask.new(category_id: @category.id, task_id: @task.id)
      # if @category_task.save
        redirect_to category_path(@category)
      else
        render :new, status: :unprocessable_entity
      end
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end
<<<<<<< HEAD
=======

>>>>>>> aa85b1aef0da886ff92531d64b3ca97bcc478830


  def destroy
    @category = Category.find_by(id: params[:id])
    @category.destroy
    redirect_to categories_path
  end


end

