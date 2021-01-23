class MenuItem < ApplicationRecord
  has_many :orders 

  has_many :carts

  belongs_to :restaurant
end
