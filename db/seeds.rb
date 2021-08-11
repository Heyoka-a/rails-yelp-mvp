# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
restau1 = { name: "Sesame", address: "7 Boundary St, London E2 7JE", phone_number: "062195", category: "chinese" }
restau2 = { name: "Mcdo", address: "7 Boundary St, London E2 7JE", phone_number: "062195", category: "chinese" }
restau3 = { name: "Flunch", address: "7 Boundary St, London E2 7JE", phone_number: "062195", category: "chinese" }



[ restau1, restau2, restau3 ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
