# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all
City.destroy_all


#city
10.times do
  city = City.create!(city_name: Faker::Address.city)
end


100.times do
   dogsitter = Dogsitter.create!(first_name: Faker::Name.first_name, city: City.all.sample)
end


200.times do
   dog = Dog.create!(dog_name: Faker::Games::Pokemon.name, city: City.all.sample)
end


500.times do
  stroll_city = City.all.sample
  stroll = Stroll.create!(dogsitter: Dogsitter.where(city: stroll_city).sample, city: stroll_city)
end


170.times do
  # random stroll dans random dog
  random_dog1 = Dog.all.sample
  random_stroll1 = Stroll.all.sample
  random_dog1.strolls << random_stroll1
  # random dog dans random stroll
  random_stroll2 = Stroll.all.sample
  random_dog2 = Dog.all.sample
  random_stroll2.dogs << random_dog2
end


