# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.delete_all
Book.create! id: 1, title: "The Catcher in the Rye", manufacturer: "Penguin", category: "Coming of Age", price: 9.99, active: true
Book.create! id: 2, title: "The Second Half", manufacturer: "Penguin", category: "Sport", price: 15.00, active: true
Book.create! id: 3, title: "Animal Farm",  manufacturer: "Litte Island", category: "Political Satire", price: 5.95, active: true
Book.create! id: 4, title: "To Kill A Mockingbird", manufacturer: "Penguin", category: "Coming of Age", price: 12.95, active: true
Book.create! id: 5, title: "Scar Tissue", manufacturer: "Smiley", category: "Music", price: 18.45, active: true
Book.create! id: 6, title: "The Lord of the Flies",  manufacturer: "Story Horse", category: "Coming of Age", price: 8.25, active: true