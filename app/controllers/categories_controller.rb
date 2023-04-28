class CategoriesController < ApplicationController

def index 
  @category = Category.all
  render :index
end 

def show
  @category = Category.find_by(id: params[:id])
  render :show
end

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