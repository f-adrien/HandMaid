# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "creating services..."

Service.create(name: "Bedrooms")
Service.create(name: "Bathrooms")
Service.create(name: "Livingroom")
Service.create(name: "Kitchen")
Service.create(name: "Inside cabinets")
Service.create(name: "Inside fridge")
Service.create(name: "Inside oven")
Service.create(name: "Laundry wash & dry")
Service.create(name: "Ironing")
Service.create(name: "Window cleaning")
Service.create(name: "Outdoors")

puts "Services created"
