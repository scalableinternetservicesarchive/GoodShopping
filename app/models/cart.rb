class Cart < ApplicationRecord
  belongs_to :shopper
  belongs_to :product
end
