class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :quantity
      t.string :product_title
      t.integer :product_price
      t.integer :shipping_price
      t.string :firstname
      t.string :lastname
      t.string :street
      t.string :suburb
      t.string :postcode
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
