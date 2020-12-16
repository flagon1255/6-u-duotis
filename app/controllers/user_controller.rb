class UserController < ApplicationController

def index

end

	def new
		@User = User.new
	end

	def index
		@User = User.all

	end

def create

if @User = User.new(user_params)
	 @User = User.new(user_params)
 	@User.save

	flash.now[:notice] = "Submited"
	redirect_to "/"
else
	flash[:notice] = "Error"
	render "index"
end
end



def login
	@User =User.new


end

def user_params
	params.require(:user).permit(:name,:password)	
end

end
