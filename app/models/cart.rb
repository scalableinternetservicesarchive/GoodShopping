class Cart < ApplicationRecord
  belongs_to :shopper, dependent: :destroy 
  belongs_to :product, dependent: :destroy 
end
