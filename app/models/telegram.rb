# == Schema Information
#
# Table name: telegrams
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Telegram < ActiveRecord::Base

	def self.get_updates
		object = get_return_object
		return false unless is_valid_return?(object)

		[get_first_names(object) ,get_ids(object)].join(' | ')
		[get_information(object)]

	end

	def self.get_return_object
		raw = Mechanize.new.get "https://api.telegram.org/bot174942579:AAH0OWxgwz3TpEOrT-8TbGx3aUsekhq9qXI/getUpdates"
	end

	def self.is_valid_return?(object)
		object['ok']
	end

	def self.get_first_names(object)
		justname = object['result'].map {|i| i['message']['from']['first_name'] }
		justname.select{|item| justname.count(item) > 0}.uniq
	end

	def self.get_last_names(object)
		object['result'].map {|i| i['message']['from']['last_name'] }
	end

	def self.get_usernames(object)
		username = object['result'].map {|i| i['message']['from']['username'] }
		username.select{|item| username.count(item) >= 1}.uniq
	end

	def self.get_ids(object)
		justids = object['result'].map {|i| i['message']['from']['id'] }
		justids.select{|item| justids.count(item) >= 1}.uniq
	end

	def self.get_information(object)
		info = object['result'].map {|i| i['message']}
		info.select{|item| info.count(item) >= 0}.uniq
	end

	def time(object)
		Time.current.utc.iso8601
	end

	def today
  		tzinfo.now.to_date
	end
end





# b['result'].each { |i| puts "#{i['message']['from']['first_name']} #{i['message']['from']['last_name']} #{i['message']['from']['username']} #{i['message']['from']['id']}" }
