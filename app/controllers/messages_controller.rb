class MessagesController < ApplicationController
  before_action :set_user, only: [:new, :create, :show_sent_messages]

  def new
  end

  def create
  	@message = @user.sent_messages.build(message_params)
  	if @message.save
  		flash[:success] = "Message sent"
  		redirect_to current_user
  	end  		
  end

  def show
  end

  def show_sent_messages
  end

  private
  def message_params
  	params.require(:message).permit(:content, :recipent_id)
  end

  def set_user
    @user = User.find(current_user.id)
  end

end
