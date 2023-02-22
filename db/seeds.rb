# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

restaurants = 0
reviews = 0

Restaurant.destroy_all
10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  restaurants += 1
  puts "creating restaurant #{restaurants}"
end

5.times do
  Review.create(
    content: Faker::Movie.quote,
    rating: rand(1..5)
  )
  reviews += 1
  puts "creating review #{reviews}"
end
