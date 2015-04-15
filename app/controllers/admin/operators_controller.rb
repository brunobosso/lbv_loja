class Admin::OperatorsController < Admin::BaseController

	def index
		@operators = Operator.all
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
		@operator.save
		redirect_to admin_operators_path
	end

	def update
		@operator = Operator.find params[:id]
		@operator.update_attributes operator_params

		redirect_to admin_operators_path
	end

	def destroy
		@operator = Operator.find params[:id]
		@operator.destroy

		redirect_to admin_operators_path
	end	

	def operator_params
		params.require(:operator).permit(:name,:email,:sector_id)
	end
end