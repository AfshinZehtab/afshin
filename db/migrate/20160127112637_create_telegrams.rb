class CreateTelegrams < ActiveRecord::Migration
  def change
    create_table :telegrams do |t|
    	

      t.timestamps null: false
    end
  end
end
