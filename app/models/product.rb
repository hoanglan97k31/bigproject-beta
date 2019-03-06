class Product < ApplicationRecord

  belongs_to :category

  validates :tittle, :description, :price, presence: true

  scope :published, ->{ where(published: true) }
end
