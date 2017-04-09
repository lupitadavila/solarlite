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
		@presale = Presale.find(params[:id])
		@bill_per_year = @presale.bill * 12
		@bill_per_20year = @presale.bill * 12 * 20
		@solar_bill = ((@presale.bill * 12) * 0.29).round(2)
		@solar_bill20 = ((@presale.bill * 12 * 20) * 0.29).round(2)
	end

	private

	def presale_params
		params.require(:presale).permit(:first_name, :zip_code, :bill, :desired_bill)
	end

end
