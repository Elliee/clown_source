# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require "faker"
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.create(email: "dvishuddha@gmail.com", created_at: "2021-12-03 23:31:14", updated_at: "2021-12-03 23:31:14", first_name: "VISHUDDHA", last_name: "VITHANAGE")
# User.create(email: "andrew@gmail.com", created_at: "2021-12-03 23:31:14", updated_at: "2021-12-04 23:31:14", first_name: "ANDREW", last_name: "KERJ")
User.destroy_all
user = User.create(first_name: 'Ibrahim', last_name: 'Achkar', password: 'aaaaaa', email: 'mail@mail.com')
user.save!
puts "user with id: #{user.id} has been created"


5.times do |_x|
    clown = Clown.new(name: Faker::FunnyName.name,
        description: 'This is a clown',
                                price: [10, 20, 30, 40].sample,
                                user_id: user.id)
                                clown.save!

    puts "clown with id: #{clown.id} has been created"
  end

# Clown.create(name: 'elon', description: 'he is very rich!', price: 10, user_id: 1)
# Clown.create(name: 'joker', description: 'he is very poor!', price: 10, user_id: 1)
# Clown.create(name: 'miky', description: 'he is very nice!', price: 12, user_id: 1)
# puts"created clowns"

booking = Booking.create(start_date:3122021, end_date:5122021, status:"bla bla bla", user_id:user.id, clown_id:1)
booking.save!
puts "booking with id: #{booking.id} has been created"
Booking.create(start_date:4122021, end_date:8122021, status:"tell me something", user_id:1, clown_id:2)
Booking.create(start_date:5122021, end_date:10122021, status:"This is so nice", user_id:1, clown_id:3)
# # puts"created bookings"
#User.create(email: encrypted_password:)
# User.create(email: "dvishuddha@gmail.com", created_at: "2021-12-03 23:31:14", updated_at: "2021-12-03 23:31:14", first_name: "VISHUDDHA", last_name: "VITHANAGE")
# User.create(email: "andrew@gmail.com", created_at: "2021-12-03 23:31:14", updated_at: "2021-12-04 23:31:14", first_name: "ANDREW", last_name: "KERJ")
