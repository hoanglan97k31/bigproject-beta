class AddReferenceToPaymentsInOrderItem < ActiveRecord::Migration[5.2]
  def change
    add_reference :payments, :order_item, index: true
  end
end
