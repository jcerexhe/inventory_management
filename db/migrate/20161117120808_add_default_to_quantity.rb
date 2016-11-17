class AddDefaultToQuantity < ActiveRecord::Migration[5.0]
  def change
    change_column :stocks, :quantity, :integer, default: 0
  end
end
