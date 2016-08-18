# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating seed data..."

c2 = Category.create(name: "Astrology")
c2 = Category.create(name: "Classical")
c2 = Category.create(name: "Computer")
c2 = Category.create(name: "Daily")
c2 = Category.create(name: "Entertainment")
c1 = Category.create(name: "Familiy")
c2 = Category.create(name: "History")
c2 = Category.create(name: "Lesson")
c2 = Category.create(name: "Love")
c2 = Category.create(name: "Religion")
c2 = Category.create(name: "Research")

puts "Seed data created"