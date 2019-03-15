class CartsController < ApplicationController

  def index
    @order_item = current_order.order_items.new
  end
  
  def show
    @order = current_order
    @order_item = current_order.order_items.new
  end
end
