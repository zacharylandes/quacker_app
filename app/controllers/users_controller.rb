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
<<<<<<< HEAD
    @user = User.find(params[:id])
=======

>>>>>>> e7d53cfcf17da18ab7f9d40dbc9412f009c59aa8
  end

  def update
  end

  def destroy
  end
end
