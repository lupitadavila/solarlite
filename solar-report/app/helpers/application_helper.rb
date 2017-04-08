module ApplicationHelper

	def require_valid_user
		if !current_user
			flash[:error] = "You must be logged in to do that."
			redirect_to login_path
		end
	end

	def require_company_rep
		if current_user.company_id == nil
			flash[:error] = "Access Denied: Please get permission to continue"
			redirect_to root_path
		end
	end
	
end
