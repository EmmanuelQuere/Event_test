# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
i=0
10.times do |user|
  User.create(first_name: "Prénom#{i}", last_name: "Nom#{i}", password: "nimportequoi#{i}", email: "essai#{i}@yopmail.com")
  i+=1
end
