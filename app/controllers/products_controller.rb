class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def filtro
  	if params[:category_id].to_f > 0
  		@category = Category.find params[:category_id]
	  	@products = @category.products
		render partial: "list", locals: {products: @products}
  	else
		render partial: "list", locals: {products: Product.all}	
	end
  end

end
