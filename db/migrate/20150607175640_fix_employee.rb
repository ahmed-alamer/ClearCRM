class FixEmployee < ActiveRecord::Migration
  def change
  	remove_column :employees, :description
  	rename_column :employees, :messgner_type, :messenger_type
  end
end
