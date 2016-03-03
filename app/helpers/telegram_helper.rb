module TelegramHelper

	def selectchannel
		options_for_select([
			['Select', 0], 
			['Afshin Zehtab', 88464950],
			['Somaye Soori', 27402783],
			['Yavaashaki Channel', "@Yavaashaki"],
			['YeNakhSigar Channel', "@YeNakhSigar"],
			['ZendegiZibast Channel', "@zndgzibast"],
			['DoNafar Channel', "@DoNafar"],
			['Nike & Adidas Channel', "@NikeAdidasPumaDe"],
			['Afshin Test', "@afshintest"],

		])
	end

	def selectaction
		options_for_select([
			['Select', 0], 
			['Send Text', "#{@link_text}"],
			['Send Photo', "#{@link_photo}"],
			['Send Video', "#{@link_video}"],
			['Send Mp3', "#{@link_audio}"],
			['Send Document', "#{@link_document}"],
		])
	end




end
