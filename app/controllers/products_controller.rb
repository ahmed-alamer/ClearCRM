class ProductsController < ApplicationController

  def index
  	@products = Product.all
  end

  def new
  	@product = Product.new
  end

  def create
  	@product = Product.new(product_params)
  	if @product.save
  		redirect_to(:action => "index")
  	else
  		render("new")
  	end
  end

  def edit
  	find_product_by_id
  end

  def update
  	find_product_by_id
  	if @product.update_attributes(product_params)
  		redirect_to :action => "show", :id => @product.id
  	else
  		render("edit")
  	end
  end

  def show
  	find_product_by_id
  end

  private
  	def product_params
  		params.require(:product).permit(:name, :description, :category, :source)
  	end

  	def find_product_by_id
  		@product = Product.find(params[:id])
  	end
end
