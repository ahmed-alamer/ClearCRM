class ChangeMeetingTimeType < ActiveRecord::Migration
  def change
  	change_column :meetings, :meeting_time, :time
  end
end
