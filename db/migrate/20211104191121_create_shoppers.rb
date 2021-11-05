class CreateShoppers < ActiveRecord::Migration[6.1]
  def change
    create_table :shoppers do |t|
      t.string :name
      t.string :email
      t.bigint :telephone
      t.string :address

      t.timestamps
    end
  end
end
