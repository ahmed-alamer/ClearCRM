class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
    	t.string :user_name
    	t.string :password_digest
    	t.string :user_type
    	t.string :first_name
    	t.string :last_name
    	t.boolean :admin
    	t.text :description
    	t.string :job_title
    	t.string :department
    	t.integer :cell_phone
    	t.integer :home_phone
    	t.text :address
    	t.boolean :active
    	t.string :email
    	t.string :messenger_id
    	t.string :messgner_type
    	t.integer :reports_to
      t.timestamps null: false
    end
  end
end
