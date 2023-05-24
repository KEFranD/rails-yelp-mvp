require 'faker'

CATEGORIES = %w[chinese italian japanese french belgian].freeze

puts 'Creating 5 fake restaurants...'

5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: CATEGORIES.sample
  )
  restaurant.save!
end
puts 'Finished!'
