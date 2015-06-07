class ContactsController < ApplicationController

  # before_action :set_account_id

  def index
    set_account_id
  	@contacts = Account.find(@account_id).contacts
  end

  def new
  	@contact = Contact.new
  end

  def create
  	@contact = Contact.new(contact_params)
    @contact.account_id = @account_id
  	if @contact.save
  		redirect_to(:action => "index", :account_id => @account_id)
  	else
  		render("new")
  	end
  end

  def edit
    prepare_contact
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(contact_params)
      redirect_to(:action => "index", :account_id => @account_id)
    else
      render("edit")
    end
  end

  def show
    prepare_contact
  end

  private
  	def contact_params
  		params.require(:contact).permit(:name, :work_phone, :fax, :home_phone, :cell_phone, :do_not_call, :assistant, :assistant_phone, :lead_source, :primary_address, :alternate_address)
  	end

  	def set_account_id
  		@account_id = params[:account_id]
  	end

    def prepare_contact
      @contact = Contact.find(params[:id])
    end
end
