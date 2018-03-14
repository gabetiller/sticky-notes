require 'faker'
include Faker



admin = User.create!(
  email: 'admin@admin.com',
  password: 'Mowgli11@',
)

10.times do
  Item.create!(
    user:  admin,
    name: Faker::Seinfeld.quote,
  )
end

5.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end
users = User.all



20.times do
  Item.create!(
    user:   users.sample,
    name: Faker::Seinfeld.quote,
  )
end








puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
