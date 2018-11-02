class Product < ApplicationRecord
  validates :name, presence: true, length: { in: 1..200 }
  validates :description, presence: true, length: { in: 10..200 }
  validates :price, numericality: { greater_than: 0 }
  validates :shipping_price, numericality: { greater_than: 0 }
  validates :stock, numericality: { greater_than: 0 }
  belongs_to :user
  has_many :orders
  has_one_attached :image
end