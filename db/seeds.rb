# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Registration.destroy_all
BookingService.destroy_all
Service.destroy_all

puts "creating services..."

Service.create!(name: "Bedroom")
Service.create!(name: "Bathroom")
Service.create!(name: "Livingroom")
Service.create!(name: "Kitchen")
Service.create!(name: "Cabinets")
Service.create!(name: "Fridge")
Service.create!(name: "Oven")
Service.create!(name: "Laundry")
Service.create!(name: "Ironing")
Service.create!(name: "Windows")
Service.create!(name: "Outdoors")
Service.create!(name: "Toilet")

puts "Services created"

puts "creating 2 registrations"
registration = Registration.create!(email: "barbara@gmail.com", password: "password", user_id: 1, user_type: "Client")
Registration.create!(email: "thomas@gmail.com", password: "password", user_id: 1, user_type: "Cleaner")
Registration.create!(email: "matthiss@gmail.com", password: "password", user_id: 2, user_type: "Cleaner")
puts "registrations created"

puts "creating client"
Client.create!(first_name: "Barbara", last_name: "Peric", phone_number: "0606060606", address: "2 Avenue des Champs Elysées")
puts "client created"

puts "creating cleaner"
Cleaner.create!(first_name: "Thomas", last_name: "Bonnet", availability: true, address: "35 rue Diderot, 75012 Paris", radius: 50, phone_number: "0606060606", remote_photo_url: "https://res.cloudinary.com/dszrivz3t/image/upload/v1567085434/thomas_pic_rmha1n.jpg")
Cleaner.create!(first_name: "Matthis", last_name: "Parisot", availability: true, address: "15 Boulevard Suchetm 75016 Paris", radius: 50, phone_number: "0606060606", remote_photo_url: "https://res.cloudinary.com/dszrivz3t/image/upload/v1567085713/matthis_ed8n6a.jpg")
puts "cleaner created"


# puts "creating a booking"

# Booking.create(date: "", total_duration: 200, client_id: 1, cleaner_id: 1, price_cents: 50, address: "2 Avenue des Champs Elysées", status: "pending")


puts "booking created"




