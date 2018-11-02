class Order < ApplicationRecord
  validates :quantity, numericality: { greater_than: 0 }
  validates :product_title, presence: true, length: { in: 1..200 }
  validates :product_price, numericality: { greater_than: 0 }
  validates :firstname, presence: true, length: { in: 1..200 }
  validates :lastname, presence: true, length: { in: 1..200 }
  validates :street, presence: true, length: { in: 1..200 }
  validates :suburb, presence: true, length: { in: 1..200 }
  validates :postcode, presence: true, length: { in: 1..200 }
  validates :state, presence: true, length: { in: 1..100 }
  validates :country, presence: true, length: { in: 4..100 }
  belongs_to :user
  belongs_to :product
end