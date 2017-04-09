class PresalesController < ApplicationController

	def index

	end

	def new
		@presale = Presale.new
	end

	def create
		@presale = Presale.new(presale_params)
		if @presale.save
			redirect_to presale_path(@presale)
		else
			render root_path
		end
	end

	def show
		@nonav = false
		@presale = Presale.find(params[:id])
	end

	private

	def presale_params
		params.require(:presale).permit(:first_name, :zip_code, :bill, :desired_bill)
	end

end
