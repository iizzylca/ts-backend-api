class OrderSerializer < ActiveModel::Serializer
  attributes :id, :total

  
  belongs_to :user
  belongs_to :menu_item
end
