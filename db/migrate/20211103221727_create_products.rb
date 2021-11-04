class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :manufacturer
      t.float :price
      t.integer :number_in_stock
      t.float :average_rating
      t.text :description
      t.text :product_information

      t.timestamps
    end
  end
end
