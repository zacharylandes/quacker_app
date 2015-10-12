class SiteController < ApplicationController
  def index
    @messages = Message.all
    # debugger
    # @user = User.find(params[:id])
  end

  def register
  end

  def sign_in
    if user = User.find_by(name: login_params[:name], password: login_params[:password])
      session[:current_user_id] = user.id
    else
      flash[:error] = 'Whaaat, you forgot something'
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
