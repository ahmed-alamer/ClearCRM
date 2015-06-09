class FixEmails < ActiveRecord::Migration
  def change
  	remove_column :emails, :from
  	remove_column :emails, :to
  end
end
