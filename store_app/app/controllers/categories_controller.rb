class CategoriesController < ApplicationController
  
  def index
    @categories = Category.all
  end

  def show
    id = params.require(:id)
    @category = Category.find(id)
    @products = @category.products
  end

  def new
  	@category=Category.new
  end
    

     def edit
     id = params[:id]
        @category = Category.find(id)
    end

        def update
        id = params[:id]
        updated_info = params.require(:category).permit(:name, :description)
        @category = Category.find(id)
        @category.update_attributes(updated_info)
        redirect_to category_path(@category.id)
    end    
end
