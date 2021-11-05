class CartsController < ApplicationController
    def new
        @cart = Cart.new
    end

    def create
        @cart = Cart.new(cart_params)
        if @cart.save
            render :new
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

    private
        def cart_params
        params.require(:cart).permit(:shopper_id, :product_id, :quantity)
        end

end
