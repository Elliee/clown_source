# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Clown.create(name: 'elon', description: 'he is very rich!', price: 0, user_id: 1)
Booking.create(start_date: 11111, end_date: 22222, clown_id: 1, user_id: 1)