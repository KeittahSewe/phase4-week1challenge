# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Pizza.destroy_all
# Restaurant.destroy_all

puts 'Seeding Pizzas...'

20.times do
  Pizza.create(
    [{ name: Faker::Food.dish, ingredients: Faker::Food.description }],
  )
end

puts 'Done seeding Pizzas!'

puts 'Seeding Restaurants...'

20.times do
  Restaurant.create(
    [{ name: Faker::Restaurant.name, address: Faker::Address.full_address}],
  )
end
puts 'Done seeding Restaurants!'

puts 'Seeding restaurant pizzas...'

20.times do
  RestaurantPizza.create(
    [
      {
        price: rand(1...30),
        pizza_id: rand(1..20),
        restaurant_id: rand(1..20),
      },
    ],
  )
end

puts 'Done seeding restaurant pizzas!'