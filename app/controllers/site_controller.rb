class SiteController < ApplicationController
  def index
    @messages = Message.all
    @user = User.find(params[:id])
  end

  def register
  end


  private
  def message_params
    params.require(:message).permit(:subject,:content, :id)
  end

end
