class ShoppersController < ApplicationController
    def index
        @shoppers = Shopper.all
    end

    def show
        @shopper = Shopper.find(params[:id])
    end

    def new
        @shopper = Shopper.new
    end

    def create
        @shopper = Shopper.new(shopper_params)
        if @shopper.save
            redirect_to root_path, notice:  "Shopper added"
          else
            render :new,  status: :unprocessable_entity
          end
    end

    def destroy
        @shopper = Shopper.find(params[:id])
        @shopper.destroy
    
        redirect_to root_path
      end 

    private
    def shopper_params
      params.require(:shopper).permit(:name, :email, :telephone, :address)
    end
end
