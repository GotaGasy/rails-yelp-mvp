require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
asiat = { name: 'Pierre Sang', address: '55 Rue Oberkampf, 75011 Paris', category: 'chinese',
          phone_number: Faker::PhoneNumber.cell_phone }
pizza = { name: 'Chez Justine', address: '96 Rue Oberkampf, 75011 Paris', category: 'italian',
          phone_number: Faker::PhoneNumber.cell_phone }
sushi = { name: 'Nakagawa', address: '142 Rue Oberkampf, 75011 Paris', category: 'japanese',
          phone_number: Faker::PhoneNumber.cell_phone }
burgers = { name: 'Le Camion Qui Fume', address: '66 Rue Oberkampf, 75011 Paris', category: 'french',
            phone_number: Faker::PhoneNumber.cell_phone }
pny = { name: 'PNY', address: '96 Rue Oberkampf, 75011 Paris', category: 'belgian',
        phone_number: Faker::PhoneNumber.cell_phone }

[asiat, pizza, sushi, burgers, pny].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name} - #{restaurant.address} - #{restaurant.category.capitalize} - #{restaurant.phone_number}"
end
puts 'Finished!'
