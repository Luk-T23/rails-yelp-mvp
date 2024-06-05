p 'Hellooo making your seeds'

possible_category = ["chinese", "italian", "japanese", "french", "belgian"]

10.times do
crestaurants
( :name Faker::Book.author
  :address Faker::Address.street_address
  :phone_number Faker::PhoneNumber.phone_number
  :category possible_category.sample)
end

p 'Completed planting'

private

Restaurant.new = crestaurants
