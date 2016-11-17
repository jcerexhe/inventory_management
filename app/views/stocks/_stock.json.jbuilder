json.extract! stock, :id, :brand, :stock_type, :model, :colour, :serial_number, :cost, :price, :quantity, :created_at, :updated_at
json.url stock_url(stock, format: :json)