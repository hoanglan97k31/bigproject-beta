class Product < ApplicationRecord
  
  belongs_to :category, required: false
  has_many :order_items

  validates :tittle, :description, :price, presence: true
  
  default_scope { where(published: true) }
  default_scope {order('created_at DESC')}
end
