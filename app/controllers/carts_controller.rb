class CartsController < ApplicationController
    def new
        @current_user = session[:current_user]
        @cart = Cart.new
    end

    def create
        @current_user = session[:current_user]
        @cart = Cart.new(cart_params)
        if @cart.save
            redirect_to products_path #show page 
          else
            flash.now[:error] = "Your product is not added!"
            render :new
        end
    end

    def show
        @current_user = session[:current_user]
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
