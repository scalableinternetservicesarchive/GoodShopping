class RemoveProductImage < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :img
  end
end
