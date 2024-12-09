# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Book.destroy_all

Book.create!(title: "The Tower", author: "Dan Brown", year: "1992", summary: "A novel about the dangers lurking in an abandoned tower.")
Book.create!(title: "People Everywhere", author: "Alan Dennis", year: "1998", summary: "How to get along with anybody in your daily life.")
Book.create!(title: "Another Day", author: "Sim Peters", year: "2002", summary: "How to move on from grief that alters your life.")
Book.create!(title: "Just a Dream", author: "Olivia Dance", year: "2014", summary: "A fantasy novel about lovers from different realms of existence.")
Book.create!(title: "Sometimes", author: "Nancy Apple", year: "2021", summary: "Sometimes you meet the right person at the wrong time and chaos ensures.")

puts "Finished! Created #{Book.count} books."
