module SessionsHelper

	def current_user
    	session[:user_id] ? User.find(session[:user_id]) : nil
  end

	def logged_in?
		current_user ? true : false
	end

	def login
		session[:user_id] = @user.id
	end

	def logout
		session[:user_id] = nil
	end
end