class MessagesController < ApplicationController

	def new
    @message = Message.new
  end
  
  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:notice] = "Message Sent Sucessfully!!"
      redirect_to messages_path
    else
      flash[:alert] = "something went wrong!"
      render :new
    end
  end

private
  def message_params
    params.require(:message).permit(:to, :from, :body)
  end
end