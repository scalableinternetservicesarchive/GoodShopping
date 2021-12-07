class SignInController < ApplicationController
    def login
        puts params
        username = params[:username]
        password = params[:password]

        shopper = Shopper.find_by(username: username, password: password)
        manufacturer = Manufacturer.find_by(username: username, password: password)

        unless shopper.nil?
            puts "Shopper exists"
            session[:current_user] = {
                "type" => "shopper",
                "id" => shopper.id
            }
            redirect_to products_url
            return
        end

        unless manufacturer.nil?
            puts "Manufacturer exists"
            session[:current_user] = {
                "type" => "manufacturer",
                "id" => manufacturer.id
            }
            redirect_to products_url
            return
        end
    end

    def logout
        session.delete(:current_user)
        redirect_to "/"
    end
end