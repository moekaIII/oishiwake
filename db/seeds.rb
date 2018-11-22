# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
30.times do |n|
  name = Faker::Pokemon.name
  email = Faker::Internet.email
  avatar = Faker::Avatar.image("my-own-slug")
  place = Faker::Address.state
  password = "password"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password,
               icon: avatar,
               place: place
               )
end
