# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating seed data..."

c1 = Category.create(name: "Astrology")
c2 = Category.create(name: "Classical")
c3 = Category.create(name: "Computer")
c4 = Category.create(name: "Daily")
c5 = Category.create(name: "Entertainment")
c6 = Category.create(name: "Familiy")
c7 = Category.create(name: "History")
c8 = Category.create(name: "Lesson")
c9 = Category.create(name: "Love")
c10 = Category.create(name: "Religion")
c11 = Category.create(name: "Research")

a1 = Author.create(name: "Author", surname: "1", profile: "Author 1 Profile")
a2 =Author.create(name: "Author", surname: "2", profile: "Author 2 Profile")
a3 =Author.create(name: "Author", surname: "3", profile: "Author 3 Profile")
a4 =Author.create(name: "Author", surname: "4", profile: "Author 4 Profile")
a5 =Author.create(name: "Author", surname: "5", profile: "Author 5 Profile")


Book.create!(name: "Book 1", description: "Açıklama 1", published_at: 2000, publisher: "Can Kitabevi", author_id: a1.id, category: c1)
Book.create(name: "Book 2", description: "Açıklama 2", published_at: 2001, publisher: "Can Kitabevi", author_id: a1.id, category: c2)
Book.create(name: "Book 3", description: "Açıklama 3", published_at: 2002, publisher: "Can Kitabevi", author_id: a1.id, category: c3)
Book.create(name: "Book 4", description: "Açıklama 4", published_at: 2003, publisher: "Can Kitabevi", author_id: a2.id, category: c4)
Book.create(name: "Book 5", description: "Açıklama 5", published_at: 2004, publisher: "Can Kitabevi", author_id: a2.id, category: c5)
Book.create(name: "Book 6", description: "Açıklama 6", published_at: 2005, publisher: "Can Kitabevi", author_id: a3.id, category: c6)
Book.create(name: "Book 7", description: "Açıklama 7", published_at: 2006, publisher: "Can Kitabevi", author_id: a4.id, category: c7)
Book.create(name: "Book 8", description: "Açıklama 8", published_at: 2007, publisher: "Can Kitabevi", author_id: a4.id, category: c8)
Book.create(name: "Book 9", description: "Açıklama 9", published_at: 2008, publisher: "Can Kitabevi", author_id: a5.id, category: c9)
Book.create(name: "Book 10", description: "Açıklama 10", published_at: 2009, publisher: "Can Kitabevi", author_id: a5.id, category: c10)

puts "Seed data created"