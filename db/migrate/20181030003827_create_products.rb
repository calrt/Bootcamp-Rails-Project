class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.text :description
      t.integer :price
      t.integer :shipping_price
      t.integer :stock

      t.timestamps
    end
  end
end
