class AddActionsRelations < ActiveRecord::Migration
  def change
  	# Calls
  	add_column :calls, :employee_id, :integer
  	add_column :calls, :contact_id, :integer

  	# Emails
  	add_column :emails, :employee_id, :integer
  	add_column :emails, :contact_id, :integer

  	# Cases
  	add_column :cases, :employee_id, :integer
  	add_column :cases, :contact_id, :integer

  	# Notes
  	add_column :notes, :employee_id, :integer
  	add_column :notes, :contact_id, :integer
  end
end
