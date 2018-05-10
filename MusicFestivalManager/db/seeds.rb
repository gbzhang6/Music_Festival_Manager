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

Stage.create(name: "Gov Ball NYC", location: "NYC")
Stage.create(name: "Bacardi", location: "NYC")
Stage.create(name: "Honda", location: "NYC")
Stage.create(name: "American Eagle", location: "NYC")

Artist.create(name: "Slaves (UK)")
Artist.create(name: "Pond")
Artist.create(name: "Alvvays")
Artist.create(name: "Maggie Rogers")
Artist.create(name: "Yeah Yeah Yeahs")
Artist.create(name: "Jack White")
Artist.create(name: "Lophiile")
Artist.create(name: "Wolf Alice")
Artist.create(name: "Goldlink")
Artist.create(name: "Tash Sultana")
Artist.create(name: "Damian Marley")
Artist.create(name: "Lou The Human")
Artist.create(name: "Sir Sly")
Artist.create(name: "Belly")
Artist.create(name: "Dram")
Artist.create(name: "Shawn Mendes")
Artist.create(name: "Post Malone")
Artist.create(name: "James Blake")
Artist.create(name: "Tash Sultana")
Artist.create(name: "A$AP TWELVYY")
Artist.create(name: "Two Feet")
Artist.create(name: "Flight Facilities")
Artist.create(name: "6LACK")
Artist.create(name: "The Glitch Mob")



Performance.create(artist: Artist.find(1), stage: Stage.find(1), start_time: "12:15", end_time: "12:45")
Performance.create(artist: Artist.find(2), stage: Stage.find(1), start_time: "12:15", end_time: "12:45")
Performance.create(artist: Artist.find(3), stage: Stage.find(1), start_time: "15:00", end_time: "15:45")
Performance.create(artist: Artist.find(4), stage: Stage.find(1), start_time: "16:30", end_time: "17:30")
Performance.create(artist: Artist.find(5), stage: Stage.find(1), start_time: "18:45", end_time: "20:00")
Performance.create(artist: Artist.find(6), stage: Stage.find(1), start_time: "21:15", end_time: "23:00")
Performance.create(artist: Artist.find(7), stage: Stage.find(2), start_time: "12:45", end_time: "13:30")
Performance.create(artist: Artist.find(8), stage: Stage.find(2), start_time: "14:15", end_time: "15:00")
Performance.create(artist: Artist.find(9), stage: Stage.find(2), start_time: "15:45", end_time: "16:30")
Performance.create(artist: Artist.find(10), stage: Stage.find(2), start_time: "17:45", end_time: "18:45")
Performance.create(artist: Artist.find(11), stage: Stage.find(2), start_time: "20:00", end_time: "21:45")
Performance.create(artist: Artist.find(12), stage: Stage.find(3), start_time: "12:15", end_time: "12:45")
Performance.create(artist: Artist.find(13), stage: Stage.find(3), start_time: "13:30", end_time: "14:15")
Performance.create(artist: Artist.find(14), stage: Stage.find(3), start_time: "15:00", end_time: "15:45")
Performance.create(artist: Artist.find(15), stage: Stage.find(3), start_time: "16:30", end_time: "17:15")
Performance.create(artist: Artist.find(16), stage: Stage.find(3), start_time: "17:25", end_time: "18:00")
Performance.create(artist: Artist.find(17), stage: Stage.find(3), start_time: "18:45", end_time: "20:00")
Performance.create(artist: Artist.find(18), stage: Stage.find(3), start_time: "21:00", end_time: "23:00")
Performance.create(artist: Artist.find(19), stage: Stage.find(4), start_time: "12:45", end_time: "13:30")
Performance.create(artist: Artist.find(20), stage: Stage.find(4), start_time: "14:15", end_time: "15:00")
Performance.create(artist: Artist.find(21), stage: Stage.find(4), start_time: "15:45", end_time: "16:30")
Performance.create(artist: Artist.find(22), stage: Stage.find(4), start_time: "18:00", end_time: "18:45")
Performance.create(artist: Artist.find(23), stage: Stage.find(4), start_time: "20:00", end_time: "21:15")



# cannot use find_or_create_by when using has_secure_password

Booking.create(performance_id: 2, schedule_id: 1)
Booking.create(performance_id: 6, schedule_id: 1)
Booking.create(performance_id: 4, schedule_id: 2)
Booking.create(performance_id: 6, schedule_id: 2)
Booking.create(performance_id: 3, schedule_id: 2)
