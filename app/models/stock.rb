class Stock < ApplicationRecord
  require 'csv'

  validates :brand, :stock_type, :model, :colour, :cost, :price, presence: true

  before_save :capitalize_fields

  def self.import(file)
    csv_text = File.read(file.path)
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Stock.create!(row.to_hash)
    end
  end

  def capitalize_fields
    self.brand.capitalize!
    self.stock_type.capitalize!
    self.model.capitalize!
    self.colour.capitalize!
    self.serial_number.upcase!
  end
end
