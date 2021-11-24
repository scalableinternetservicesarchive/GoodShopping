class ManufacturersController < ApplicationController
    def index
        @manufacturers = Manufacturer.all
    end

    def show
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

    def edit
      @manufacturer = Manufacturer.find(params[:id])
    end

    def update
      @manufacturer = Manufacturer.find(params[:id])

      if @manufacturer.update(manufacturer_update_params)
        redirect_to edit_manufacturer_path(@manufacturer), notice: "Manufacturer updated successfully!"
      else
        redirect_to edit_manufacturer_path(@manufacturer), error: "Error updating manufacturer."
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

    def manufacturer_update_params
      params.require(:manufacturer).permit(:email, :telephone)
    end
     
end
