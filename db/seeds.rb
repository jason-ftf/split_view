# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

25.times do
  r = [0,1,2]
  Person.create(first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                address: Faker::Address.street_address,
                city: Faker::Address.city_prefix,
                state: Faker::Address.state,
                phone_number: Faker::PhoneNumber.phone_number,
                relationship: r.shuffle.take(1).first
               )
end