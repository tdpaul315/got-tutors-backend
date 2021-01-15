# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Tiauna Paul", age: 31, grade: "post-graduate")
User.create(name: "Christopher Paul", age: 7, grade: "2nd")
User.create(name: "Randi Lewis", age: 17, grade: "12th")
User.create(name: "Rory Lewis", age: 10, grade: "4th")
User.create(name: "Marliee Paul", age: 22, grade: "university student")

5.times do 
    Tutor.create(name: Faker::Name.name, course:Faker::Educator.subject , yrs_of_exp: rand(1..10),  availability:["Mon", "Tues", "Weds", "Thurs", "Fri"].sample)
end

10.times do
    Session.create(name: Faker::Educator.course_name, description: Faker::Lorem.paragraph , date: Faker::Date.forward(days: 30) , tutor_id: rand(1..5) )
end