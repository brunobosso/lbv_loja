class Admin::CategoriesController < Admin::BaseController

	def index
    	@categories = Category.all
  	end

	def show
    	@category = Category.find params[:id]
    end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new category_params
		if @category.save	
			flash[:success] = "Categoria salva com sucesso!"
		else
			flash[:danger] = "Ocorreu um erro ao salva a categoria"
		end
		redirect_to admin_categories_path	
	end

	def edit
    	@category = Category.find params[:id]
  	end

	def update
		@category = Category.find params[:id]
		if @category.update_attributes category_params
			flash[:success] = "Categoria alerada com sucesso!"
		else
			flash[:danger] = "Ocorreu um erro ao alterar a categoria"
		end
		redirect_to admin_categories_path	
	end

	def category_params
		params.require(:category).permit(:name)
	end

	def destroy
    	@category = Category.find params[:id]
    	if @category.destroy	
			flash[:success] = "Categoria excluida com sucesso!"
		else
			flash[:danger] = "Ocorreu um erro ao excluir a categoria"
		end
	    redirect_to admin_categories_path
  	end

end