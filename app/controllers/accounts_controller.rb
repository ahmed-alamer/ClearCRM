class AccountsController < ApplicationController
  
  def index
  	@accounts = Account.all
  end

  def show
  	@account = Account.find(params[:id])
    @contacts = @account.contacts
  end

  def new
  	@account = Account.new
  end

  def create
  	@account = Account.new(account_params)
  	if @account.save
  		flash[:notice] = "Account '#{@account.name}' was successfully created"
  		redirect_to(:action => "index")
  	else
  		flash[:notice] = "Something went wrong, pleas contact Tech Support"
  		render("new")
  	end  	
  end

  def edit
    @account = Account.find(params[:id])
  end

  def update
    @account = Account.find(params[:id])
    if @account.update_attributes(account_params)
      flash[:notice] = "Account '#{@account.name}' was successfully created"
      redirect_to(:action => "index")
    else
      render("edit")
    end
  end

  private
  	def account_params
  		params.require(:account).permit(:name, :description, :industry, :annual_revenue, :phone, :fax, :billing_address, :shipping_address, :rating, :employees, :ticker_symbol)
  	end
end
