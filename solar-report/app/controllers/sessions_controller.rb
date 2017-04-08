class SessionsController < ApplicationController

	def new
		@no_nav = true
	end

	def create
    	@user = User.find_by_email(params[:email])
	    if @user && @user.authenticate(params[:password])
	      login
	      redirect_to root_path
	    else
	      render 'new'
	    end
	end

	def destroy
		logout
		redirect_to root_path
	end

end