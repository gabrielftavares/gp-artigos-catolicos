# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning the categories..."
Category.delete_all
puts ""

puts "Generating new categories..."
Category.create!(name: "Terço")
Category.create!(name: "Pulseira")
Category.create!(name: "Chaveiro")
Category.create!(name: "Agenda")
puts ""

Category.all.each do |category|
  puts category.name
end
