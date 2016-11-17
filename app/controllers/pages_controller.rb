class PagesController < ApplicationController
  def analytics
    @inventory = Stock.all
    @inventory_cost_total = 0
    @inventory.each do |i|
      @inventory_cost_total = @inventory_cost_total + i.cost * i.quantity
    end

    @inventory_price_total = 0
    @inventory.each do |i|
      @inventory_price_total = @inventory_price_total + i.price * i.quantity
    end

    @inventory_quantity = 0
    @inventory.each do |i|
      @inventory_quantity = @inventory_quantity + i.quantity
    end

    @ave_cost = @inventory_cost_total / @inventory.count
    @ave_price = @inventory_price_total / @inventory.count

    @date = Time.now.strftime('%d %B %Y')
  end
end
