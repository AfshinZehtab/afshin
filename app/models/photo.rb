# == Schema Information
#
# Table name: messages
#
#  id                       :integer          not null, primary key
#  chat_id                  :string
#  text                     :text
#  parse_mode               :string
#  disable_web_page_preview :boolean
#  disable_notification     :boolean
#  reply_to_message_id      :integer
#

class Photo < ActiveRecord::Base
	validates :chat_id, :photo, :caption, presence: true
end
