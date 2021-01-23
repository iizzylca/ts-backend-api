class MenuSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :ingredients, :image_url, :price

  has_many :orders

  has_many :carts

  belongs_to :restaurant
end
