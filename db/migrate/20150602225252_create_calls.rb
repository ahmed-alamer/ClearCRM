class CreateCalls < ActiveRecord::Migration
  def change
    create_table :calls do |t|
    	t.string :title
    	t.text :summary
    	t.time :duration_hours
    	t.date :call_date
    	t.string :direction
    	t.text :notes
      t.timestamps null: false
    end
  end
end
