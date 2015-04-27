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
		if @sector.save
			flash[:success] = "Setor salvo com sucesso!"
		else
			flash[:danger] = "Ocorreu um erro ao salvar o setor!"
		end
		redirect_to admin_sectors_path
	end

	def update
		@sector = Sector.find params[:id]
		if @sector.update_attributes params_sector
			flash[:success] = "Setor alterado com sucesso!"
		else
			flash[:danger] = "Ocorreu um erro ao alterar o setor!"
		end
		redirect_to admin_sectors_path

	end	

	def destroy
		@sector = Sector.find params[:id]
		if @sector.destroy
			flash[:success] = "Setor exluido com sucesso!"
		else
			flash[:danger] = "Ocorreu um erro ao excluir o setor!"
		end
		redirect_to admin_sectors_path
	end

	def params_sector
		params.require(:sector).permit(:name)
	end

end
