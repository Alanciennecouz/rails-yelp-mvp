# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: 123456789, category: "belgian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, Genève E1 6PQ", phone_number: 123456789, category: "chinese"}
sushi =  {name: "sushi", address: "lelac, Morges E1 6PQ", phone_number: 123456789, category: "japanese"}
macdo =  {name: "macdo", address: "St-Francois, Lausanne E1 6PQ", phone_number: 123456789, category: "italian"}
bouffe =  {name: "bouffe", address: "fondue street, Fribourg E1 6PQ", phone_number: 123456789, category: "french"}

[dishoom, pizza_east, sushi, macdo, bouffe].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
