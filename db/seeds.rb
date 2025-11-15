# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Photo.delete_all
Photographer.delete_all
puts "generating 3 new photos and 2 new photographers..."

photo_1 = Photo.create!(
  image_url: "Shark.jpg",
  description: "Great White Shark",
  date_taken: "August 4th, 2022",
  price: 10,
  title: "Big Shark, Big Heart"
)

photo_2 = Photo.create!(
  image_url: "Hippo.jpg",
  description: "Great Purple Hippo",
  date_taken: "June 1st, 2020",
  price: 20,
  title: "Big Hippo, Get a Grippo"
)

photo_3 = Photo.create!(
  image_url: "Cat.jpg",
  description: "Great Orange Cat",
  date_taken: "August 4th, 2022",
  price: 500,
  title: "Big Cat, in the Hat"
)

photographer_1 = Photographer.create!(
  first_name: "Gordon",
  last_name: "Mocarski",
  age: 1,
  nationality: "Orange"
)

photographer_2 = Photographer.create!(
  first_name: "Fiona",
  last_name: "Chipkin",
  age: 2,
  nationality: "Silver"
)

puts "Congrats! Your 3 Photos and 2 Photographers were created successfully 👍"