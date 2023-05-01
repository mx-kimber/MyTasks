class TasksController < ApplicationController
  before_action :require_login

  def index
    if params[:category_id].present?
      @tasks = Task.joins(:categories).where(categories: { id: params[:category_id] })
    else
      @tasks = Task.where(user_id: current_user.id)
    end
    render :index
  end

  def show
    @task = Task.find_by(id: params[:id])
    render :show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(
      user_id: current_user.id,
      title: params[:task][:title],
      description: params[:task][:description],
      deadline: params[:task][:deadline],
      completed: false
    )

    category_id = params[:task][:category_id]

    if category_id.present?
      category = Category.find(category_id)
      @task.categories << category
    end

    if @task.save
      redirect_to task_path(@task)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @task = Task.find_by(id: params[:id])
    render :edit
  end

  def update
    @task = Task.find_by(id: params[:id])
    @task.title = params[:task][:title]
    @task.description = params[:task][:description]
    @task.deadline = params[:task][:deadline]
    @task.completed = params[:task][:completed]

    if @task.save
      redirect_to "/tasks/"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    task = Task.find_by(id: params[:id])
    task.destroy
    redirect_to "/tasks"
  end
end

