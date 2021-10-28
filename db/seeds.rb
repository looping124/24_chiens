# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dog.destroy_all
City.destroy_all
Dogsitter.destroy_all
Meeting.destroy_all
Stroll.destroy_all

#Création de 3 villes
paris = City.create(city_name:"Paris")
nice = City.create(city_name:"Nice")
lyon = City.create(city_name:"Lyon")
cities_array = [paris,nice,lyon]

#création de 30 dogs
30.times do |index|
  Dog.create(name:Faker::Creature::Dog.name,city:cities_array[rand(cities_array.size)])
puts "Dog #{index+1} créé"
end

#creation de 10 dogsitters
10.times do |index|
  Dogsitter.create(name:Faker::Name.name,city:cities_array[rand(cities_array.size)])
puts "Dogsitter #{index+1} créé"
end

#création de 5 strolls
5.times do |index|
  Stroll.create(place:Faker::Address.street_address,dogsitter:Dogsitter.all[rand(0..Dogsitter.all.size)])
  puts "Stroll #{index+1} créé"
end

#création de 10 meetings
10.times do |index|
  Meeting.create(date:Faker::Time.between(from: DateTime.now, to: DateTime.now+365, format: :default),dog:Dog.all[rand(0..Dog.all.size)],stroll:Stroll.all[rand(0..Stroll.all.size)])
  puts "Meeting #{index+1} créé"
end