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
		if @user.email == "doe@example.com"
			redirect_to edit_user_path(@user)
		end
	end

	def update
		@user = User.find(params[:id])
		@convert = User.link_to_admin(params)
		redirect_to user_path(current_user.id)
	end

	def edit
		if current_user.email == "doe@example.com"
			@user = User.find(params[:id])
		else
			redirect_to users_path(current_user.id)
		end
	end

	
end