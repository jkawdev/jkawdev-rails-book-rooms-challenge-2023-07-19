# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Hotel.delete_all
Room.delete_all
Booking.delete_all

Hotel.create!(name: "Formule 1", address: "Meudon")
Hotel.create!(name: "La Dernière Chance", address: "Eu")
Hotel.create!(name: "Au Lion d'or", address: "Saint Pourçain sur Sioule")


60.times do
  price = rand(10..35)
  price_division = price % 5
  if price_division <= 2
    price_per_night = price - price_division
  else
    price_per_night = price + price_division
  end

  room = {
    hotel_id: rand(1..3),
    price_per_night: price_per_night,
    capacity: rand(1..4)
  }
  Room.create!(room)
end
