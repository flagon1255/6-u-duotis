class SessionsController < ApplicationController
 skip_before_action :verify_authenticity_token

def create
user=User.find_by(name:login_params[:name])
if user && user.authenticate(login_params[:password]) && user.adminrights=="true"
	redirect_to '/contacts'	
	session[:user_id] = user.id
elsif user && user.authenticate(login_params[:password])
	redirect_to '/'
	session[:user_id] = user.id
else
	redirect_to '/Login'
end
end



private
def login_params
	params.require(:login).permit(:name,:password)
end




end

