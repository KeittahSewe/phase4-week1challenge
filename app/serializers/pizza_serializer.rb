class PizzaSerializer < ActiveModel::Serializer
  attributes :id, :name, :ingredients
  has_many :restaurant_pizzas
  has_many :restaurants, through: :restaurant_pizzas
end
