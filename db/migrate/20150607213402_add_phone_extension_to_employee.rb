class AddPhoneExtensionToEmployee < ActiveRecord::Migration
  def change
  	add_column :employees, :phone_exension, :integer
  end
end
