class UsersController < ApplicationController

  def index
    render json: { message: "wooohooo too!"}
    # @user = User.all
    # render :index
  end
  

end
