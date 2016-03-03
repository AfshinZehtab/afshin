class TelegramController < ApplicationController

	before_action :authenticate_user!, execpt: [:index]
	


	def index
		@link_photo = "https://api.telegram.org/bot174942579:AAH0OWxgwz3TpEOrT-8TbGx3aUsekhq9qXI/sendPhoto?"
		@link_text = "https://api.telegram.org/bot174942579:AAH0OWxgwz3TpEOrT-8TbGx3aUsekhq9qXI/sendmessage?&parse_mode=Markdown&"
		@link_video = "https://api.telegram.org/bot174942579:AAH0OWxgwz3TpEOrT-8TbGx3aUsekhq9qXI/sendVideo?"
		@link_audio = "https://api.telegram.org/bot174942579:AAH0OWxgwz3TpEOrT-8TbGx3aUsekhq9qXI/sendAudio?"
		@link_document = "https://api.telegram.org/bot174942579:AAH0OWxgwz3TpEOrT-8TbGx3aUsekhq9qXI/sendDocument?"

		params[:action]

	end

	def recieve_form
	end

	def create
		
		# redirect_to url_for(:controller => :telegram, :action => :index)
		redirect_to action: :index
		# form_for @link, :url => url_for(:controller => 'telegram', :action => 'index')
	end

	

end
