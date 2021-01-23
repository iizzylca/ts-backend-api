class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :password, :address, :phone
  has_many :reviews

  has_many :orders 
  has_many :menu_items, through: :orders

  has_one :cart
end
