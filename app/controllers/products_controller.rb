class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  
  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(params[:product])
    if @product.save
      flash[:notice] = "Successfully created product."
      redirect_to products_url
    else
      render :action => 'new'
    end
  end
end
