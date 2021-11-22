class AddPasswordToShopperAndManu < ActiveRecord::Migration[6.1]
  def change
    add_column :shoppers, :username, :string, :limit =>25, :before => 'name'
    add_column :shoppers, :password, :varchar, :after => 'username'
    
    add_column :manufacturers, :username, :string, :limit =>25, :before => 'name'
    add_column :manufacturers, :password, :varchar, :after => 'username'
   
  end
end
