# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Guide.create(first_name: 'Brad', last_name: 'Chadlley')
Guide.create(first_name: 'Shred', last_name: 'McNasty')
Guide.create(first_name: 'Broseph', last_name: 'Broseidon')
Customer.create(first_name: 'Joe', last_name: 'Shmo')
Customer.create(first_name: 'New', last_name: 'Bee')
Customer.create(first_name: 'Mr.', last_name: 'Cabbage')
Reservation.create(customer_id: 1, reservation_date: Date.new(2021,7,13) )
Reservation.create(customer_id: 2, reservation_date: Date.new(2021,7,14) )