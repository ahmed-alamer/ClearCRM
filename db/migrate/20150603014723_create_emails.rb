class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
    	t.date :sent
    	t.integer :messsage_id
 			t.string :subject
 			t.string :status
 			t.string :intent
 			t.string :to
 			t.text :cc
 			t.text :bcc
 			t.string :from	 
      t.timestamps null: false
    end
  end
end
