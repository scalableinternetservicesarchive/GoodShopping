# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Manufacturer.create({username: 'shereen_0', password: 'password1', name: 'Shereen0',email: 'Shereen-0@gmail.com', telephone:'11111111'})
Manufacturer.create({username: 'shereen_1', password: 'password2', name: 'Shereen1',email: 'Shereen-1@gmail.com', telephone:'88888888'})
Manufacturer.create({username: 'shereen_2', password: 'password3', name: 'Shereen2',email: 'Shereen-2@gmail.com', telephone:'77777777'})


Shopper.create({username: 'shopper_0', password: 'shopper_pass_0', name: 'Shereen-Shopper-0',email: 'Shereen-sh-0@gmail.com', telephone:'11111111', address: 'address-0'})
Shopper.create({username: 'shopper_1', password: 'shopper_pass_1', name: 'Shereen-Shopper-1',email: 'Shereen-sh-1@gmail.com', telephone:'22222222', address: 'address-1'})
Shopper.create({username: 'shopper_2', password: 'shopper_pass_2', name: 'Shereen-Shopper-2',email: 'Shereen-sh-2@gmail.com', telephone:'33333333', address: 'address-2'})

Product.create({product_name: 'toy-0', manufacturer_id: 0, price: 10, number_in_stock: 10, average_rating: 3.3, 
     description: 'This is the description', product_information: 'This is the specs'})

Product.create({product_name: 'toy-1', manufacturer_id: 2, price: 20, number_in_stock: 5, average_rating: 4.5, 
    description: 'This is the description', product_information: 'This is the specs'})

Product.create({product_name: 'toy-2', manufacturer_id: 1, price: 15, number_in_stock: 8, average_rating: 4, 
    description: 'This is the description', product_information: 'This is the specs'})