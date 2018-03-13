require 'faker'
include Faker



5.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end
users = User.all



50.times do
  Item.create!(
    user:   users.sample,
    name: Faker::Seinfeld.character,
  )
  end

  User.create!(
    email: 'admin@admin.com',
    password: 'Mowgli11@',
  )





puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
