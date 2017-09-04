# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "viknesh admin" , email: "mailvikkiceg@gmail.com" , password: "jobhunter_12" , password_confirmation: "jobhunter_12", admin: true)
99.times do |n|
    name = Faker::Name.name
    email = "example-#{n+1}@gmail.com"
    User.create!(name: name , email: email , password: "jobhunter_12" , password_confirmation: "jobhunter_12")    
end
