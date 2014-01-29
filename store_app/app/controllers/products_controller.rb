class ProductsController < ApplicationController
	  def index
    @products = Product.all
  end

  def show
    id = params.require(:id)
    @product = Product.find(id)
    @categories = @product.categories
  end

  def new
  	@product=Product.new
  end
    

     def edit
     id = params[:id]
        @product = Product.find(id)
    end

        def update
        id = params[:id]
        updated_info = params.require(:product).permit(:name, :pid)
        @product = Product.find(id)
        @product.update_attributes(updated_info)
        redirect_to product_path(@product.id)
    end    
end
