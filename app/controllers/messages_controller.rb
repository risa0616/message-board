class MessagesController < ApplicationController
  def index
    @message = Message.all
  end
  
  def create
    @message = Message.new(message_params)
    @message.save
    redirect_to root_path , notice: 'メッセージを保存しました'
  end
  
  private
  def message_params
    params.require(:message).permit(:name , :body)
  end
end
