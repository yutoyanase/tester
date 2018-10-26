class UsersController < ApplicationController
    def signup
        @user = User.new
    end

    def create
        @user = User.new(users_params)
      if @user.save
			     redirect_to "/"
		  else
			     render 'signup'
		  end

    end

    def detail
      @user=User.find_by(name: params[:name])
      #if user&.authenticate(param[:password])
      if  @user
      session[:user_id]=user.id
      redirect_to ("/signup")
      else

      end

    end

    def users_params
		params.require(:user).permit(:name, :email, :password)
	end
end
