class MessagesController < ApplicationController
	include MessagesHelper

  	def index
  		@messages = Message.all
  	end

  	def new
  		@message = Message.new
	end

	def show
	end

	def create
		@message = Message.new(message_params)

		if @message.save
			if send_bot_message(@message.chat_id, @message.text)
				#render action: 'index', notice: "Successfull send a message"
				redirect_to messages_path, notice: "Successfull send a message"
			else
				redirect_to new_message_path, alert: "Error when sending a message"
			end
		else
			redirect_to new_message_path, notice: "Could not create Message Object"
		end
	end

	def edit
	end

	def delete
	end

	private

	def message_params
		params.require(:message).permit(:chat_id, :text)
	end
end
