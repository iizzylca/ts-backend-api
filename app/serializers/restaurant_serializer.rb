class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image_url, :email, :phone
  has_many :reviews
  has_many :users, through: :reviews

  has_many :menu_items
  has_many :orders, through: :menu_items
end
