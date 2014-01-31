class UsersController < ApplicationController
	before_action :current_user, :prevent_hack, only: [:show]

	def index
		if params[:search]
			@pro = Admin.search(params[:search])
		else
			@pro = Admin.all
		end
	end

	def show 
		@user = User.find(params[:id])
		@admin = @user.admin
		@measurement = Measurement.where(user_id: @user.id)
	end

	def update
		@user = User.find(params[:id])
		@convert = User.link_to_admin(params)
		redirect_to user_path(current_user.id)
	end

	
end