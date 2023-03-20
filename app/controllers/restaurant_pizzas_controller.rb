class RestaurantPizzasController < ApplicationController

    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def index
        restaurant_pizza = RestaurantPizza.all
        render json: restaurant_pizza
    end
    def create
        restaurant_pizza = RestaurantPizza.create(create_restaurant_pizza)
        render json: restaurant_pizza.pizza, status: :created
    end
    private
    def create_restaurant_pizza
        params.permit(:price, :pizza_id, :restaurant_id)
    end
    def render_unprocessable_entity(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end
end