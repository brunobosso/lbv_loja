class Admin::ProductsController < Admin::BaseController

	def index
		@products = Product.all
	end

	def show
		@product = Product.find params[:id]
	end

	def edit
		@product = Product.find params[:id]
	end

	def new
		@product = Product.new
	end

	def create

		@product = Product.new params_product
		@categories = Category.find params_product[:category_ids]
		@product.categories = @categories
		@product.save
		redirect_to admin_products_path
	end

	def update
		@product = Product.find params[:id]
		@product.update_attributes params_product
		redirect_to admin_products_path

	end

	def destroy
		@product = Product.find params[:id]
		@product.destroy
		redirect_to admin_products_path
	end

	def params_product
		params.require(:product).permit(:name,:url_image, :category_ids => [])
	end

end