module MessagesHelper
	def send_bot_message(chat_id, text)
		response = RestClient.post 'https://api.telegram.org/bot174942579:AAH0OWxgwz3TpEOrT-8TbGx3aUsekhq9qXI/sendMessage?&parse_mode=Markdown', 
		chat_id: chat_id, text: text

		if JSON.parse(response)['ok']
			true
		else
			false
		end
	rescue
		false
	end
	
end
