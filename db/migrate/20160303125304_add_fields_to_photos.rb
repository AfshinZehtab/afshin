class AddFieldsToPhotos < ActiveRecord::Migration
  def change
  	create_table :photos do |t|
  		t.string :chat_id
  		t.text   :caption
  		t.boolean :disable_web_page_preview
  		t.boolean :disable_notification
  		t.integer :reply_to_message_id
  	end
  end

  def self.down
    drop_table :photos
  end
end
