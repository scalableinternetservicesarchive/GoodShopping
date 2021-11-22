class Manufacturer < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    validates :telephone, presence: true

end
