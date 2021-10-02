# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Guide.create(first_name: 'Brad', last_name: 'Chadlley')
Customer.create(first_name: 'Joe', last_name: 'Shmo')
Reservation.create(guide_id: 1, customer_id: 1)