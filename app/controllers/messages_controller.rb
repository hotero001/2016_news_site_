class MessagesController < ApplicationController
  def new
  	@message = Message.new
  end

  def create
  	@message = Message.new(message_params)

  	if @message.valid?
  		MessageMailer.new_message(@message).deliver
  		redirect_to root_path, notice: "Email was sent."
  	else
  		flash[:alert] = "An error occurred. Try again"
  		render :new
  	end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :content)
  end
end
