class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new

  end

  def create
  render text: 'Thank you for creating a profile'

  end

  def show
    @user = User.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
