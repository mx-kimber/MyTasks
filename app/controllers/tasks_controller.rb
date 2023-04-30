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
    if @task.save
      redirect_to "/tasks/#{@task.id}"
    else
      render :new, status: :unprocessable_entity
    end

  end

  def edit
    @task = Task.find_by(id: params[:id])
    render :edit
  end

  def update
    task = Task.find_by(id: params[:id])
    task.title = params[:task][:title]
    task.description = params[:task][:description]
    task.deadline = params[:task][:deadline]
    task.completed = params[:task][:completed]

    if task.save
      redirect_to "/tasks/#{task.id}"
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
