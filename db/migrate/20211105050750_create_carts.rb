class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.references :shopper, index: true,  null: false, foreign_key: true
      t.references :product, index: true,  null: false, foreign_key: true
      t.integer :quantity
      t.timestamps
    end
  end
end
