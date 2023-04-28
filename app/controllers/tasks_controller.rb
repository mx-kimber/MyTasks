class TasksController < ApplicationController

  def index
    render json: {message:"tasks working"}
  end

end
