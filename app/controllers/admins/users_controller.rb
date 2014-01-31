class Admins::UsersController < ApplicationController
	before_action :authorize_admin
	def show

	end

end