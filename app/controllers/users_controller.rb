class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
    render text: "Thanks"
  end

  def create
  @user = User.new
  redirect_to new_user_path
  end

  def show
    @user = User.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
