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
asiat = { name: 'Pierre Sang', address: '55 Rue Oberkampf - 75011 Paris', category: 'chinese' }
pizza = { name: 'Chez Justine', address: '96 Rue Oberkampf - 75011 Paris', category: 'italian' }
sushi = { name: 'Nakagawa', address: '142 Rue Oberkampf - 75011 Paris', category: 'japanese' }
burgers = { name: 'Le Camion Qui Fume', address: '66 Rue Oberkampf - 75011 Paris', category: 'french' }
pny = { name: 'PNY', address: '96 Rue Oberkampf - 75011 Paris', category: 'belgian' }

[asiat, pizza, sushi, burgers, pny].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name} - #{restaurant.category}"
end
puts 'Finished!'
