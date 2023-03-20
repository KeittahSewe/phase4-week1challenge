class RestaurantPizzaSerializer < ActiveModel::Serializer
  attributes :price, :pizza, :restaurant
  has_one :pizza
  belongs_to :pizza
  belongs_to :restaurant
end
