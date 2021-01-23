class Restaurant < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews

    has_many :menu_items
    has_many :orders, through: :menu_items

end
