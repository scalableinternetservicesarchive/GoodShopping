class Product < ApplicationRecord
    validates :product_name, presence: true
    validates :manufacturer, presence: true
    validates :price, presence: true
    validates :number_in_stock, presence: true
    validates :average_rating, presence: true
    validates :description, presence: true, length: { minimum: 20 }
    validates :product_information, presence: true, length: { minimum: 20 }
end
