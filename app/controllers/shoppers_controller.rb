class ShoppersController < ApplicationController
    def index
      @current_user = session[:current_user]
      @shoppers = Shopper.all
    end

    def show
      @current_user = session[:current_user]
      @shopper = Shopper.find(params[:id])
    end

    def new
      @current_user = session[:current_user]
      @shopper = Shopper.new
    end

    def create
      @current_user = session[:current_user]
      @shopper = Shopper.new(shopper_params)
      if @shopper.save
        redirect_to shopper_path(@shopper), notice: "Shopper added"
      else
        render :new,  status: :unprocessable_entity
      end
    end

    def edit
      @current_user = session[:current_user]
      @shopper = Shopper.find(params[:id])
    end

    def update
      @current_user = session[:current_user]
      @shopper = Shopper.find(params[:id])

      if @shopper.update(shopper_update_params)
        redirect_to edit_shopper_path(@shopper), notice: "Shopper updated successfully!"
      else
        redirect_to edit_shopper_path(@shopper), error: "Error updating shopper."
      end
    end

    def destroy
        @shopper = Shopper.find(params[:id])
        @shopper.destroy
    
        redirect_to root_path
    end 

    private
    def shopper_params
      params.require(:shopper).permit(:username, :password, :name, :email, :telephone, :address)
    end

    def shopper_update_params
      params.require(:shopper).permit(:email, :telephone, :address)
    end
end
