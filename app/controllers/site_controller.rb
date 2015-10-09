class SiteController < ApplicationController
  def index
    @messages = Message.all
  end

  def register
  end


  private
  def message_params
    params.require(:message).permit(:subject,:content)
  end

end
