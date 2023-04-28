class UsersController < ApplicationController
  # def index
  #   @user = User.all
  #   render :index
  # end
  
  # def show
  #   @user = User.find_by(id: params[:id])
  #   render template: "users/show"
  # end  

  def new
    @user = User.new
    render template: "users/new"
  end

  def create
    @user = User.new(
      name: params[:user][:name],
      email: params[:user][:email],
      password: params[:user][:password]
      
    )
    if @user.save
     #session[:user_id] = @user.id
      redirect_to "/users"
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  # def update
  #   @user = User.find_by(id: params[:id])
  #   @user.name = params[:name] || @user.name
  #   @user.email = params[:email] || @user.email
  #   @user.password = params[:password_digest] || @user.password
  
  #   @user.save!
  #   render :show
  # end
  
  # def destroy
  #   @user = User.find_by(id: params[:id])
  #   @user.destroy
  #   render json: {message: "User has been successfully removed"}
  # end

end
