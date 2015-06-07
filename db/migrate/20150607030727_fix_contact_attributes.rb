class FixContactAttributes < ActiveRecord::Migration
  def change
  	rename_column :contacts, :don_not_call, :do_not_call
  	add_column :contacts, :email, :string
  end
end
