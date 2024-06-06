require 'faker'

p 'Hellooo making your seeds'
p 'Making 10 restaurants'

# holds the potential ratings
r = [0, 1, 2, 3, 4, 5]

# holds the accepted res categories
possible_category = %w[chinese italian japanese french belgian]

10.times do
  Restaurant.create!(
    name: Faker::Book.author,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: possible_category.sample
  )
end

p 'Making 20 reviews per restaurant'

Restaurant.all.each do
  20.times do
    Review.create!(rating: r.sample ,content: Faker::Quote.most_interesting_man_in_the_world)
  end
end

p 'Completed planting'
