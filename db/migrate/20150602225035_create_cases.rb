class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
    	t.string :name
    	t.text :description
    	t.boolean :solved
    	t.string :case_number
    	t.string :case_type
    	t.string :status
    	t.string :priority
    	t.text :resolution
    	t.text :work_log
      t.timestamps null: false
    end
  end
end
