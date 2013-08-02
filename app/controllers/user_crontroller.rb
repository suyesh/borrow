class UserController<ApplicationController
	
	def new

	end


	def create
		@user = User.new(user_params)
		if @user.save
			flash[:notice] "your Account has been created"

		else
			flash[:notice] "Oops something went wrong"
		end
		redirect_to root_path

	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
			flash[:notice] = "Your account was updated successfully."
		else
			flash[:notice] = "There was a problem updating your account"
		end
		redirect_to user_path(@user)
	end

	def destroy
		@user = User.find(params[:id])
		if @user.destroy
			flash[:notice] = "User has been successfully deleted"
		else
			flash[:notice] = "There was a problem deleting the user."
		end
		redirect_to user_index_path
	end


	def show
		@user = User.find(params[:id])
	end


	def index
		@users = User.all
	end


	private


	def user_params
		params.require(:user).permit(:email, :password, :name, :email, :phone,)
	end

end
