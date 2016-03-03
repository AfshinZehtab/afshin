module PhotosHelper
	def send_bot_photo(chat_id, photo, text)
		response = RestClient.post 'https://api.telegram.org/bot174942579:AAH0OWxgwz3TpEOrT-8TbGx3aUsekhq9qXI/sendmessage', 
		chat_id: chat_id, photo: photo, caption: capiton

		if JSON.parse(response)['ok']
			true
		else
			false
		end
	rescue
		false
	end
end
