# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
#items

User.destroy_all
Stage.destroy_all
Artist.destroy_all
Performance.destroy_all
Schedule.destroy_all

billy = User.create(name: "billy", age: 10, gender: "Male", password: "awesome", password_confirmation: "awesome", first_name: "billy", last_name: "dale")
shun = User.create(name: "shun", age: 10, gender: "Male", password: "awesome", password_confirmation: "awesome", first_name: "shun", last_name: "yao")
gui = User.create(name: "gui", age: 10, gender: "Female", password: "awesome", password_confirmation: "awesome", first_name: "gui", last_name: "zhang")
yong = User.create(name: "yong-nicholas", age: 10, gender: "Male", password: "awesome", password_confirmation: "awesome", first_name: "YN", last_name: "kim")

gui.schedule = Schedule.create(name: "gui's awesome schedule")
billy.schedule = Schedule.create(name: "billy's awesome schedule")
shun.schedule = Schedule.create(name: "shun's awesome schedule")
yong.schedule = Schedule.create(name: "yong's awesome schedule")

5.times{Stage.find_or_create_by(name: Faker::RickAndMorty.location, location: Faker::ParksAndRec.city)}

10.times{Artist.find_or_create_by(name: Faker::RickAndMorty.character, description: Faker::RickAndMorty.quote)}

Performance.find_or_create_by(artist: (Artist.find(1)), stage: (Stage.find(rand(1..5))), start_time: "10:00", end_time: "11:00")
Performance.find_or_create_by(artist: (Artist.find(2)), stage: (Stage.find(rand(1..5))), start_time: "11:00", end_time: "12:00")
Performance.find_or_create_by(artist: (Artist.find(3)), stage: (Stage.find(rand(1..5))), start_time: "09:00", end_time: "10:00")
Performance.find_or_create_by(artist: (Artist.find(4)), stage: (Stage.find(rand(1..5))), start_time: "12:00", end_time: "13:00")
Performance.find_or_create_by(artist: (Artist.find(5)), stage: (Stage.find(rand(1..5))), start_time: "15:00", end_time: "17:00")
Performance.find_or_create_by(artist: (Artist.find(6)), stage: (Stage.find(rand(1..5))), start_time: "11:00", end_time: "12:00")

# cannot use find_or_create_by when using has_secure_password

Booking.create(performance_id: 2, schedule_id: 1)
Booking.create(performance_id: 6, schedule_id: 1)
Booking.create(performance_id: 4, schedule_id: 2)
Booking.create(performance_id: 6, schedule_id: 2)
Booking.create(performance_id: 3, schedule_id: 2)
