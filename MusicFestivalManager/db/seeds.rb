# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
#items

Item.destroy_all
User.destroy_all

20.times{Item.find_or_create_by(name: Faker::Food.dish, price: rand(30), vendor_id: rand(1..5))}

5.times{Stage.find_or_create_by(name: Faker::RickAndMorty.location, location: Faker::ParksAndRec.city)}

10.times{Artist.find_or_create_by(name: Faker::RickAndMorty.character, description: Faker::RickAndMorty.quote)}

Performance.find_or_create_by(artist: (Artist.find(rand(1..10))), stage: (Stage.find(rand(1..5))), start_time: 10, end_time: 11)
Performance.find_or_create_by(artist: (Artist.find(rand(1..10))), stage: (Stage.find(rand(1..5))), start_time: 11, end_time: 12)
Performance.find_or_create_by(artist: (Artist.find(rand(1..10))), stage: (Stage.find(rand(1..5))), start_time: 9, end_time: 10)
Performance.find_or_create_by(artist: (Artist.find(rand(1..10))), stage: (Stage.find(rand(1..5))), start_time: 12, end_time: 13)
Performance.find_or_create_by(artist: (Artist.find(rand(1..10))), stage: (Stage.find(rand(1..5))), start_time: 15, end_time: 17)

# cannot use find_or_create_by when using has_secure_password
User.create(name: "billy", password: "awesome", password_confirmation: "awesome")
User.create(name: "shun", password: "awesome", password_confirmation: "awesome")
User.create(name: "gui", password: "awesome", password_confirmation: "awesome")
User.create(name: "yong-nicholas", password: "awesome", password_confirmation: "awesome")
