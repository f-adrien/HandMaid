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


puts "creating client"
Client.create(first_name: "Bob", last_name: "Marley", phone_number: "0606060606", address: "2 Avenue des Champs Elysées")
puts "client created"

puts "creating cleaner"
Cleaner.create(first_name: "Damian", last_name: "Marley", availability: true, location: "Paris", radius: 50, phone_number: "0606060606")
puts "cleaner created"

puts "creating 2 registrations"
registration = Registration.create(email: "bobmarley@gmail.com", password: "password", user_id: 1, user_type: "Client")
Registration.create(email: "damianmarley@gmail.com", password: "password", user_id: 1, user_type: "Cleaner")
puts "registrations created"

puts "creating a booking"
Booking.create(date: "", total_duration: 200, client_id: 1, cleaner_id: 1, total_price: 50, status: false, address: "2 Avenue des Champs Elysées")
puts "booking created"




