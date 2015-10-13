class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    @user.avatar = params[:file]

    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:id])
    @message = @user.messages.new
  end



  def destroy
  end
   private
  def user_params
    params.require(:user).permit(:name,:age,:location,:about_you, :user_id)
  end
end
