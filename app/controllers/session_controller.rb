class SessionController < ApplicationController
  def new

  end

  def create
  session_user = params[:session]
  user= User.find_by_email(session_user[:email])

  
 if user and user.authenticate(session_user[:password])
     session[:user_id]= user.id	
	redirect_to my_account_url, notice: "logged in succesfully"
  else
    redirect_to login_url, alert: "Invalid user/password"  
  end
end  
  
  def destroy
  	session[:user_id] = nil
    @current_user = nil

	redirect_to root_url, notice: "Logged out"
	
  end
  
end