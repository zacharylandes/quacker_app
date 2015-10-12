class SiteController < ApplicationController
  def index
    @messages = Message.all
    # debugger
    # @user = User.find(params[:id])
  end

  def register
  end

  def sign_up
    if user = User.find_by(user_params)
      session[:current_user_id] = user.id
      redirect_to root_path
    else
      render text: "Thou shall not pass!"
    end
  end

  private
  def message_params
    params.require(:message).permit(:subject,:content, :id)
  end

  def user_params
    params.require(:user).permit(:name, :password)
  end

end
