class CartSerializer < ActiveModel::Serializer
  attributes :id, :total, :quantity, :active
  belongs_to :user
  belongs_to :menu_item
end
