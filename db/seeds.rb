# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Book.destroy_all

# Book.create!(title: "The Tower", author: "Dan Brown", year: "1992", genre: "mystery", summary: "A novel about the dangers lurking in an abandoned tower.", image_path: "jonas-jacobsson-0FRJ2SCuY4k-unsplash.jpg")
# Book.create!(title: "People Everywhere", author: "Alan Dennis", year: "1998", genre: "motivation", summary: "How to get along with anybody in your daily life.", image_path: "daria-nepriakhina-xY55bL5mZAM-unsplash.jpg")
# Book.create!(title: "Another Day", author: "Sim Peters", year: "2002", genre: "psychology", summary: "How to move on from grief that alters your life.", image_path: "beatriz-perez-moya-XN4T2PVUUgk-unsplash.jpg")
# Book.create!(title: "Just a Dream", author: "Olivia Dance", year: "2014", genre: "fantasy", summary: "A fantasy novel about lovers from different realms of existence.", image_path: "chris-lawton-9T346Ij4kGk-unsplash.jpg")
# Book.create!(title: "Sometimes", author: "Nancy Apple", year: "2021", genre: "romance", summary: "Sometimes you meet the right person at the wrong time and chaos ensures.", image_path: "kimberly-farmer-lUaaKCUANVI-unsplash.jpg")

# puts "Finished! Created #{Book.count} books."

Book.destroy_all

books = [
  { title: "The Tower", author: "Dan Brown", year: "1992", genre: "mystery", summary: "A novel about the dangers lurking in an abandoned tower.", id: 1 },
  { title: "People Everywhere", author: "Alan Dennis", year: "1998", genre: "motivation", summary: "How to get along with anybody in your daily life.", id: 2 },
  { title: "Another Day", author: "Sim Peters", year: "2002", genre: "psychology", summary: "How to move on from grief that alters your life.", id: 3 },
  { title: "Just a Dream", author: "Olivia Dance", year: "2014", genre: "fantasy", summary: "A fantasy novel about lovers from different realms of existence.", id: 4 },
  { title: "Sometimes", author: "Nancy Apple", year: "2021", genre: "romance", summary: "Sometimes you meet the right person at the wrong time and chaos ensures.", id: 5 }
]

books.each do |book|
  Book.create(book)
end

puts "Finished! Created #{Book.count} books."
