# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


100.times do
  prng = Random.new
  Person.create(name: Faker::Name.name, house_id: prng.rand(100))
end


100.times do
  House.create(address: Faker::Address.street_address)
end
