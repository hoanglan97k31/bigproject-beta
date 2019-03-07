class Product < ApplicationRecord

  belongs_to :category
  has_many :order_items

  validates :tittle, :description, :price, presence: true
  
  default_scope { where(published: true) }
end
