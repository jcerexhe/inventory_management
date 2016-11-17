class CreateStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :stocks do |t|
      t.string :brand
      t.string :stock_type
      t.string :model
      t.string :colour
      t.string :serial_number
      t.decimal :cost
      t.decimal :price
      t.integer :quantity

      t.timestamps
    end
  end
end
