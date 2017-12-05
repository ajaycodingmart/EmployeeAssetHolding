class UsersController < ApplicationController
	def index
		@user = User.all
		@user_company = Company.find(current_user.company_id).name
	end

	def show
		@user = User.find(params[:id])
		@user_company = Company.find(current_user.company_id).name
	end

	def new
		@user = User.new
	end

	def edit
    	@user = User.find(params[:id])	
	end
end
