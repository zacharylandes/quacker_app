class SiteController < ApplicationController
  def index
    @messages = Message.all
    # debugger
    # @user = User.find(params[:id])
  end

  def register
  end

  def sign_in
    if user = User.find_by(login_params)
      session[:current_user_id] = user.id
    end
    redirect_to root_path
  end

  private
  def message_params
    params.require(:message).permit(:subject,:content, :id)
  end

  def login_params
    params.require(:user).permit(:name, :password)
  end

end
