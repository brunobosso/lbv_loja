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
		@category.save	
		redirect_to admin_categories_path	
	end

	def edit
    	@category = Category.find params[:id]
  	end

	def update
		@category = Category.find params[:id]
		@category.update_attributes category_params
		redirect_to admin_categories_path	
	end

	def category_params
		params.require(:category).permit(:name)
	end

	def destroy
    	@category = Category.find params[:id]
    	@category.destroy	
	    redirect_to admin_categories_path
  	end

end