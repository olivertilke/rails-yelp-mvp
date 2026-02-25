# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Nuking database in 3...2...1..."
Restaurant.destroy_all

puts "Creating restaurants..."
Restaurant.create!(name: "Epicure", address: "75008 Paris", phone_number: "01 43 16 30 30", category: "french")
Restaurant.create!(name: "Mamma Mia", address: "Berlin Mitte", phone_number: "030 123456", category: "italian")
Restaurant.create!(name: "Sushi Samba", address: "London", phone_number: "+44 20 3000", category: "japanese")
Restaurant.create!(name: "Peking Ente", address: "Hamburg", phone_number: "040 98765", category: "chinese")
Restaurant.create!(name: "Frites & Co", address: "Brüssel", phone_number: "0032 123 456", category: "belgian")

puts "Finished! Created #{Restaurant.count} restaurants in the blink on an eye."
