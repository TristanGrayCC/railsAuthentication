# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Film.destroy_all
User.destroy_all

user_one = User.create({email:"alex@gmail.com", password: "password", password_confirmation: "password"})
user_two = User.create({email:"john@gmail.com", password: "password", password_confirmation: "password"})

user_one.films.create({name: 'Sunshine', year: 2008})
user_two.films.create({name: 'Gladiator', year: 2001})
