class UsersController < ApplicationController

	def index

	end

	def new
		@no_nav = true
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			login
			redirect_to user_path(@user)
		else
			render 'new'
		end
	end

	def show
		@no_nav = false
		@user = User.find(params[:id])
	end

	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password, :city, :state, :country, :address)
	end

end