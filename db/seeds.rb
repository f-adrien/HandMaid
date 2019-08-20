# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "creating seed"
10.times do |i|
  Booking.create(date: "2019/09/01", total_duration: 200, client_id: 1, total_price: 20, address: "Champs Elysees")
end


puts "Finished!"
