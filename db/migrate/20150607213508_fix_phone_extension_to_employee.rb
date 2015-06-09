class FixPhoneExtensionToEmployee < ActiveRecord::Migration
  def change
  	rename_column :employees, :phone_exension, :phone_extension
  end
end
