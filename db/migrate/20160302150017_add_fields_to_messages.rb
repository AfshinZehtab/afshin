class AddFieldsToMessages < ActiveRecord::Migration
  def change
  	create_table :messages do |t|
  		t.string :chat_id
  		t.text :text
  		t.string :parse_mode
  		t.boolean :disable_web_page_preview
  		t.boolean :disable_notification
  		t.integer :reply_to_message_id
  	end
  end
end
