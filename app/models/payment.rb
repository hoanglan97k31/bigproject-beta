class Payment < ApplicationRecord
  belongs_to :order_item, required: false

  def process_payment
    customer = Stripe::Customer.create email: email,
                                       card: card_token

    Stripe::Charge.create customer: customer.id,
                          amount: order_item.total_price * 100,
                          #description: order.name,
                          currency: 'usd'

  end
end
