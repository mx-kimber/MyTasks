class CategoriesController < ApplicationController

def index 
  @category = Category.all
  render :index
end 



# def update 
# end

end 