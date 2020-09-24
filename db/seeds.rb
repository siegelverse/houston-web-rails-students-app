# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Instructor.destroy_all 
Student.destroy_all 

raul = Instructor.create(name: "Raul")
joe = Instructor.create(name: "Joe")
stephen = Instructor.create(name: "Stephen")

s1 = Student.create(name: "Marcus", major: "Front-End", age: 26, instructor_id: raul.id)
s2 = Student.create(name: "Alex", major: "Front-End", age: 27, instructor_id: raul.id)
s3 = Student.create(name: "Ben", major: "Back-End", age: 24, instructor_id: joe.id)
s4 = Student.create(name: "Mike", major: "Back-End", age: 28, instructor_id: joe.id)
s5 = Student.create(name: "Eddie", major: "Software Engineering", age: 26, instructor_id: stephen.id)
s6 = Student.create(name: "John", major: "Software Engineering", age: 28, instructor_id: stephen.id)
s7 = Student.create(name: "Farzana", major: "Back-End", age: 26, instructor_id: joe.id)
s8 = Student.create(name: "Ciara", major: "Front-End", age: 26, instructor_id: raul.id)

puts "database seeded!"