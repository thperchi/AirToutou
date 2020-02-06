# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all

City.create(name:"Agen")

Dog.create(name:"Naika", city_id: City.first.id)

Dogsitter.create(first_name:"Jean", last_name:"Valjean", city_id: City.first.id)

s = Stroll.create(dogsitter_id: Dogsitter.first.id, dog_id: Dog.first.id)

puts "A stroll has been fixed for #{s.dog.name} with #{s.dogsitter.first_name} #{s.dogsitter.last_name} as dogsitter."