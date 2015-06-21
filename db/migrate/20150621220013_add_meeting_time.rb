class AddMeetingTime < ActiveRecord::Migration
  def change
  	add_column :meetings, :meeting_time, :string
  end
end
