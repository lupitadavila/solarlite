class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	layout "splash", only: [:index]

	include SessionsHelper
	include ApplicationHelper

	def index
		@no_nav = false
		@presale = Presale.new
		render '/index.html.erb'
	end
end
