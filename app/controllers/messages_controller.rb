class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def register
  end

  def create
    @message = Message.create(message_params)
    redirect_to root_path
  end


  private
  def message_params
    params.require(:message).permit(:subject,:content, :user_id)
  end

end
