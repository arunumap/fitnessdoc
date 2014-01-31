class SessionsController < ApplicationController
  def new
  end

  def create
  	if params[:admin]
  		user = Admin.find_by_email(params[:email])
  		if user && user.authenticate(params[:password])
  			session[:admin_id] = user.id
  			redirect_to root_url, notice: "Logged in!"
 			else
 				flash.now.alert = "Email or password invalid"
  			render "new"
  		end
  	else
  		auth = env["omniauth.auth"]
  		user = User.from_omniauth(env["omniauth.auth"])
      session[:user_id] = user.id
      measurement = Measurement.get_fitbit_data(current_user)
      redirect_to user_path(user.id)
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_url, notice: "logged out!"
  end
end
