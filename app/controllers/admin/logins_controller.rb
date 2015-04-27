class Admin::LoginsController < ActionController::Base
	layout 'admin/login'
	
	ADMIN_LOGIN = 'teste'
	ADMIN_REVERSED_PASSWORD = '321'

	def new
	end

	def create
		params[:password] = Operator.md5_password(params[:password])
		@operator = Operator.where("email =? and password = ?",params[:email],params[:password]).first
		if !@operator.nil?
	      flash[:success] = 'Login efetuado com sucesso'
	      session[:operator_id] = @operator.id
	      session[:operator_name] = @operator.name
	      redirect_to admin_products_path
	    else
	      flash[:danger] = 'Senha incorreta'
	      render :new
	    end
    end

    def destroy
    	session.delete(:operator_id)
    	session.delete(:operator_name)
    	flash[:success] = 'Logout efetudo com sucesso'
    	redirect_to new_admin_login_path
    end

end
