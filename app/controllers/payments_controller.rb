require "stripe"
class PaymentsController < ApplicationController
  def index
    @order = current_order
    @order_item = current_order.order_items.new
  end
  def new
    @payment = Payment.new
    @order = current_order
  end

  def create

    amount = current_order.subtotal.to_i
    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })

    payment = Stripe::Charge.create({
     customer: customer.id,
     amount: current_order.subtotal.to_i,
     currency: 'usd'
    })

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to cart_path
  end
end