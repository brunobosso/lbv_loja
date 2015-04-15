class Admin::SectorsController < Admin::BaseController

	def index
		@sectors = Sector.all
	end

	def show
    	@sector = Category.find params[:id]
    end

	def new
		@sector = Sector.new
	end

	def edit
		@sector = Sector.find params[:id]
	end

	def create
		@sector = Sector.new params_sector
		@sector.save

		redirect_to admin_sectors_path
	end

	def update
		@sector = Sector.find params[:id]
		@sector.update_attributes params_sector
		redirect_to admin_sectors_path

	end	

	def destroy
		@sector = Sector.find params[:id]
		@sector.destroy
		redirect_to admin_sectors_path
	end

	def params_sector
		params.require(:sector).permit(:name)
	end

end
