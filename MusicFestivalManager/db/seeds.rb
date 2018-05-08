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

# cannot use find_or_create_by when using has_secure_password
User.create(name: "billy", password: "awesome", password_confirmation: "awesome")
User.create(name: "shun", password: "awesome", password_confirmation: "awesome")
User.create(name: "gui", password: "awesome", password_confirmation: "awesome")
User.create(name: "young-nick", password: "awesome", password_confirmation: "awesome")
