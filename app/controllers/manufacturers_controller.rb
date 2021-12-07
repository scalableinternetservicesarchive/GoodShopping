class ManufacturersController < ApplicationController
    def index
      @current_user = session[:current_user]
      @manufacturers = Manufacturer.all
    end

    def show
        @current_user = session[:current_user]
        @manufacturer = Manufacturer.find(params[:id])
    end

    def new
        @manufacturer = Manufacturer.new
    end

    def create
        @manufacturer = Manufacturer.new(manufacturer_params)
        if @manufacturer.save
            redirect_to root_path, :notice => "Manufacturer added"
          else
            flash.now[:error] = "Manufacturer is not added!"
            render :new
          end
    end

    def destroy
        @manufacturer = Manufacturer.find(params[:id])
        @manufacturer.destroy
    
        redirect_to root_path
      end 

    private
    def manufacturer_params
      params.require(:manufacturer).permit(:username, :password, :name, :email, :telephone)
    end
     
end
