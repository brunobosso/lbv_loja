class Admin::OperatorsController < Admin::BaseController

	def index
		@operators = Operator.includes(:sector).all
	end

	def show
		@operator = Operator.find params[:id]
	end

	def new
		@operator = Operator.new
	end

	def edit
		@operator = Operator.find params[:id]
	end

	def create
		@operator = Operator.new operator_params
		if @operator.save
			flash[:success] = "Operador salvo com sucesso!"
		else
			flash[:danger] = "Ocorreu um erro ao salvar o operador!"
		end
		redirect_to admin_operators_path
	end

	def update
		@operator = Operator.find params[:id]
		if @operator.update_attributes operator_params
			flash[:success] = "Operador alterado com sucesso!"
		else
			flash[:danger] = "Ocorreu um erro ao alterar o operador!"
		end
		redirect_to admin_operators_path
	end

	def destroy
		@operator = Operator.find params[:id]
		if @operator.destroy
			flash[:success] = "Operador excluido com sucesso!"
		else
			flash[:danger] = "Ocorreu um erro ao deletar o operador!"
		end
		redirect_to admin_operators_path
	end	

	def operator_params
		params.require(:operator).permit(:name,:email,:sector_id)
	end
end