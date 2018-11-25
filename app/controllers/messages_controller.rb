class MessagesController < ApplicationController
  before_action do
    @conversation = Conversation.find(params[:conversation_id])
  end

  def index
    @message = @conversation.messages.build

    if params[:m]
      all = true
    else
      all = false
      @over = @conversation.over_ten?
    end

    @messages = @conversation.read_and_mark_messages(current_user.id, all)
  end

  def create
    @message = @conversation.messages.build(message_params)
    if @message.save
      redirect_to conversation_messages_path(@conversation)
    else
      render 'new'
    end
  end

  private

  def message_params
    params.require(:message).permit(:body, :user_id)
  end
end
