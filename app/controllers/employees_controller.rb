class EmployeesController < ApplicationController

  def index
  	@employees = Employee.all
  end

  def new
  	@employee = Employee.new
  end

  def create
		@employee = Employee.new(employee_params)
  	if @employee.save
  		redirect_to(:action => "index")
  	else
  		render("new")
  	end
  end

  def edit
  	find_employee_by_id
  end

  def update
  	find_employee_by_id
  	if @employee.update_attributes(employee_params)
  		redirect_to(:action => "show", :id => @employee.id)
  	else
  		render("edit")
  	end
  end

  def show
  	find_employee_by_id
  end

  private
  	def employee_params
  		params.require(:employee).permit(:user_name, :password, :user_type, :first_name, :last_name, :admin, :job_title, :cell_phone, :home_phone, :address, :active, :email, :messenger_id, :messenger_type, :reports_to, :department, :phone_extension)
  	end

  	def find_employee_by_id
  		@employee = Employee.find(params[:id])  		
  	end

end
