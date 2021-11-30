class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_update_params)
      redirect_to @product, notice: "Product updated successfully!"
    else
      redirect_to edit_product_path(@product), error: "Error updating product."
    end
  end

  def create
    @product = Product.new(product_params)
    # manufacturer_id = Manufacturer.find_by(name: params[:name])
    # if manufacturer_id == nil
    #   flash.now[:error] = "Manufacturer not found!"
    #   render :new 
    # else
    #   @product.manufacturer = manufacturer_id
    # end

    if @product.save
      redirect_to root_path, :notice => "product added"
    else
      flash.now[:error] = "Your product is not added!"
      render :new
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to root_path
  end 

  private
    def product_params
      params.require(:product).permit(:product_name, :manufacturer_id, :price,
      :number_in_stock, :average_rating, :description, :product_information)
    end

    def product_update_params
      params.require(:product).permit(:product_name, :price, :number_in_stock, :description)
    end
end
