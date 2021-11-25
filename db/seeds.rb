# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning up DB 🧹"
Flat.destroy_all

puts "Seeding the DB 🌱"
10.times do
  Flat.create!(
    name: Faker::Fantasy::Tolkien.location,
    address: Faker::Address.full_address,
    description: Faker::Games::Fallout.quote,
    price_per_night: rand(80..1000),
    number_of_guests: rand(1..10)
  )
end

puts "Completed"
