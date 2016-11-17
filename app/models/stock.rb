class Stock < ApplicationRecord
  validates :brand, :stock_type, :model, :colour, :cost, :price, presence: true

  before_save :capitalize_fields

  def capitalize_fields
    self.brand.capitalize!
    self.stock_type.capitalize!
    self.model.capitalize!
    self.colour.capitalize!
    self.serial_number.upcase!
  end
end
