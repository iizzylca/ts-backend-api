class User < ApplicationRecord
    has_many :reviews
    has_many :restaurants, through: :reviews

    has_many :orders
    has_many :menu_items, through: :orders
    
    has_one :cart
    
    
end
