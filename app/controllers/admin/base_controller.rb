class Admin::BaseController < ActionController::Base
	layout 'admin/application'

	before_filter :authenticate_admin

	def authenticate_admin
		unless session[:operator_id]
			redirect_to new_admin_login_path
			return
		end
	end
end