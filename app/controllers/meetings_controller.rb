class MeetingsController < ApplicationController
  
  def index
  	@meetings = Meeting.all
  end

  def show
  	@meeting = Meeting.find[params[:id]]
  end

  def new
  	@meeting = Meeting.new
  end

  def create
  	@meeting = Meeting.new(meeting_params)
  	if @meeting.save
  		redirect_to :action => "index"
  	else
  		render "new"
  	end
  end

  private
  	def meeting_params
  		params.require(:meeting).permit(:title, :log, :location, :join_url, :host_url, :creator, :external_id, :duration, :meeting_date, :status, :meeting_type, :reminder, :email_reminder, :email_reminder_sent)
  	end
end
