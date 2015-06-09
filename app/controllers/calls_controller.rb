class CallsController < ApplicationController
  
  def index
  	@calls = Call.all
  end

  def new
  	@call = Call.new
  end

  def create
  	@call = Call.new(call_params)
  	if @call.save
  		redirect_to :action => "index"
  	else
  		render("new")
  	end
  end

  def show
  	@call = Call.find(params[:id])
  end

  private
  	def call_params
  		params.require(:call).permit(:title, :summary, :duration_hour, :call_date, :direction, :notes, :employee_id, :contact_id)
  	end

end
