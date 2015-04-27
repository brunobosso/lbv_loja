class Admin::ProductsController < Admin::BaseController

	def index
		@products = Product.includes(:categories).all
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
		if @product.save
			flash[:success] = "Produto salvo com sucesso!"
		else
			flash[:danger] = "Ocorreu um erro ao salvar o produto!"
		end
		redirect_to admin_products_path
	end

	def update
		@product = Product.find params[:id]
		if @product.update_attributes params_product
			flash[:success] = "Produto alterado com sucesso!"
		else
			flash[:danger] = "Ocorreu um erro ao alterar o produto!"
		end
		redirect_to admin_products_path

	end

	def destroy
		@product = Product.find params[:id]
		if @product.destroy
			flash[:success] = "Produto excluido com sucesso!"
		else
			flash[:danger] = "Ocorreu um erro ao excluir o produto!"
		end
		redirect_to admin_products_path
	end

	def params_product
		params.require(:product).permit(:name,:url_image, :category_ids => [])
	end

end