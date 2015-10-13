class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new

  end

  def create
  @user = User.create(user_params)
  redirect_to user_path(@user)
  end

  def show
    @user = User.find_by(id: session[:current_user_id])
    # User.find(params[:id])
    @message = @user.messages.new

  end



  def update
  end

  def destroy
  end
   private
  def user_params
    params.require(:user).permit(:name,:password, :age,:location,:about_you, :user_id)
  end
end
