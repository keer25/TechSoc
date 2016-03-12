class UsersController < ApplicationController
	def new
  end

  def create
      @user = User.new(user_params)
      logger.info(@user.errors.full_messages)
      if @user.save
      	log_in @user
        render 'show'
      else
      	redirect_to root_url
      end   
  end

  def show
  	@user = User.find(params[:id])
  end

  def user_params
  	params.require(:user).permit(:name,:email,:password,:password_confirmation, :rollno, :hostel)
  end
end
