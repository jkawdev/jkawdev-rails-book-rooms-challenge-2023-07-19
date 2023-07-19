# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Hotel.destroy_all
Room.destroy_all
Booking.destroy_all

Hotel.create!(name: "Formule 1", address: "Meudon")
Hotel.create!(name: "La Dernière Chance", address: "Eu")
Hotel.create!(name: "Au Lion d'or", address: "Saint Pourçain sur Sioule")



IMAGES_URL = ["https://images.unsplash.com/photo-1615874959474-d609969a20ed?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2hhbWJyZXxlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=600&q=60",
              "https://images.unsplash.com/photo-1585821569331-f071db2abd8d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fGNoYW1icmV8ZW58MHx8MHx8fDI%3D&auto=format&fit=crop&w=600&q=60",
              "https://images.unsplash.com/photo-1531835551805-16d864c8d311?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjF8fGNoYW1icmV8ZW58MHx8MHx8fDI%3D&auto=format&fit=crop&w=600&q=60",
              "https://images.unsplash.com/photo-1628746234641-28eb583a51b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Njd8fGNoYW1icmV8ZW58MHx8MHx8fDI%3D&auto=format&fit=crop&w=600&q=60"]

60.times do
  price = rand(10..35)
  price_division = price % 5
  if price_division <= 2
    price_per_night = price - price_division
  else
    price_per_night = price + price_division
  end


  room = {
    image: IMAGES_URL.sample,
    hotel_id: Hotel.all.sample.id,
    price_per_night: price_per_night,
    capacity: rand(1..4)
  }
  Room.create!(room)
end



# file1 = File.open("db/images/chambre 1.jpg")
# file2 = File.open("db/images/chambre 1 acc1.jpg")
# file3 = File.open("db/images/chambre 1 acc2.jpg")
# file4 = File.open("db/images/chambre 1 acc3.jpg")
# room = Room.new(
#   hotel_id: rand(1..3),
#   price_per_night: price_per_night,
#   capacity: rand(1..4))
# room.photos.attach(io: file1, filename: "chambre 1", content_type: "image/png")
# room.photos.attach(io: file2, filename: "chambre 1 acc1", content_type: "image/png")
# room.photos.attach(io: file3, filename: "chambre 1 acc2", content_type: "image/png")
# room.photos.attach(io: file4, filename: "chambre 1 acc3", content_type: "image/png")
# room.save!

# file1 = File.open("db/images/chambre 2.jpg")
# room = Room.new(
#   hotel_id: rand(1..3),
#   price_per_night: price_per_night,
#   capacity: rand(1..4))

# room.photos.attach(io: file1, filename: "chambre 2", content_type: "image/png")
# room.save!

# file1 = File.open("db/images/chambre 3.jpg")
# room = Room.new(
#   hotel_id: rand(1..3),
#   price_per_night: price_per_night,
#   capacity: rand(1..4))

# room.photos.attach(io: file1, filename: "chambre 3", content_type: "image/png")
# room.save!

# file1 = File.open("db/images/chambre 4.jpg")
# room = Room.new(
#   hotel_id: rand(1..3),
#   price_per_night: price_per_night,
#   capacity: rand(1..4))

# room.photos.attach(io: file1, filename: "chambre 4", content_type: "image/png")
# room.save!

# file1 = File.open("db/images/chambre 5.jpg")
# room = Room.new(
#   hotel_id: rand(1..3),
#   price_per_night: price_per_night,
#   capacity: rand(1..4))

# room.photos.attach(io: file1, filename: "chambre 5", content_type: "image/png")
# room.save!

# file1 = File.open("db/images/chambre 6.jpg")
# room = Room.new(
#   hotel_id: rand(1..3),
#   price_per_night: price_per_night,
#   capacity: rand(1..4))

# room.photos.attach(io: file1, filename: "chambre 6", content_type: "image/png")
# room.save!

# file1 = File.open("db/images/chambre 7.jpg")
# room = Room.new(
#   hotel_id: rand(1..3),
#   price_per_night: price_per_night,
#   capacity: rand(1..4))

# room.photos.attach(io: file1, filename: "chambre 7", content_type: "image/png")
# room.save!

# file1 = File.open("db/images/chambre 8.jpg")
# room = Room.new(
#   hotel_id: rand(1..3),
#   price_per_night: price_per_night,
#   capacity: rand(1..4))

# room.photos.attach(io: file1, filename: "chambre 8", content_type: "image/png")
# room.save!

# file1 = File.open("db/images/chambre 9.jpg")
# room = Room.new(
#   hotel_id: rand(1..3),
#   price_per_night: price_per_night,
#   capacity: rand(1..4))

# room.photos.attach(io: file1, filename: "chambre 9", content_type: "image/png")
# room.save!

# file1 = File.open("db/images/chambre 10.jpg")
# room = Room.new(
#   hotel_id: rand(1..3),
#   price_per_night: price_per_night,
#   capacity: rand(1..4))

# room.photos.attach(io: file1, filename: "chambre 10", content_type: "image/png")
# room.save!
