class SiteController < ApplicationController
  def index
    @messages = Message.all
    # debugger
    # @user = User.find(params[:id])
  end

  def register
  end

  def log_in
    if user = User.find_by(name: user_params[:name], password: user_params[:password])
      session[:current_user_id] = user.id
    else
       flash[:error] = "Thou shall not pass!"
    end
      redirect_to root_path
  end

  private
  def message_params
    params.require(:message).permit(:subject,:content, :id)
  end

  def user_params
    params.require(:user).permit(:name, :password)
  end

end
