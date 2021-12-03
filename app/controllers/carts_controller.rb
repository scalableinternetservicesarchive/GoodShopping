class CartsController < ApplicationController
    def new
        @cart = Cart.new
    end

    def create
        @cart = Cart.new(cart_params)
        if @cart.save
            redirect_to @cart #show page 
          else
            flash.now[:error] = "Your product is not added!"
            render :new
        end
    end

    def show
        # shopper = Shopper.find(params[:id])
        shopping_list = Cart.where(shopper_id: params[:id])

        @products = []
        shopping_list.each do |item|
            product = Product.find(item.product_id)
            info = {"product" => product, "quantity" => item.quantity}
            @products << info
        end
    end

    def edit
        @cart = Cart.find(params[:id])
    end

    def update
        @cart = Cart.find(params[:id])

        if @cart.update(cart_params)
            redirect_to edit_cart_path(@cart), notice: "Cart updated successfully!"
        else
            redirect_to edit_cart_path(@cart), error: "Error updating cart."
        end
    end

    private
    def cart_params
        params.require(:cart).permit(:shopper_id, :product_id, :quantity)
    end

end
