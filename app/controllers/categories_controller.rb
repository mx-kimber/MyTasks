class CategoriesController < ApplicationController
  before_action :authenticate_user

  def index
    @categories = Category.all
    # @categories = Category.where(user_id: current_user.id)
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
    @category = Category.create(
      name: params[:category][:name]
    )
    if @category.save
      redirect_to "/categories/#{@category.id}"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @category = Category.find_by(id: params[:id])
    @category.destroy
    redirect_to "/categories"#, status: :see_other
  end

end
<<<<<<< HEAD

def destroy
  @category = Category.find_by(id: params[:id])
  @category.destroy
  redirect_to "/categories", status: :see_other
end

def new
  @category = Category.new
  render :new
end

def create 
  @category = Category.create(
    name: params[:category][:name]
  )
  render :show

end 
end 
