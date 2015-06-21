class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
        t.string :title
        t.string :log
        t.string :location
        t.string :join_url
        t.string :host_url
        t.string :creator
        t.string :external_id
        t.time :duration
        t.date :meeting_date
        t.string :status
        t.string :meeting_type
        t.time :reminder
        t.time :email_reminder
        t.boolean :email_reminder_sent
        t.timestamps null: false
    end
  end
end
