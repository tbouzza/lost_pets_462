# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Deleting all the pets"
Pet.destroy_all


puts "Creating pets"
10.times do
  pet = Pet.create!(
    name: Faker::Name.name,
    address: Faker::Address.city,
    found_on: Faker::Date.between(from: 30.days.ago, to: Date.today),
    species: %w(dog cat rabbit turtle snake).sample
    )
  p pet
end


puts "Done with the seed"
