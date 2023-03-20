class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address
  has_many :restaurant_pizzas
  has_many :pizzas, through: :restaurant_pizzas
end
