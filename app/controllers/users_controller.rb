class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new

  end

  def create
  render text: 'Thank you for creating a profile'

  end

  def show
  end

  def update
  end

  def destroy
  end
end
