require "faker"

admin = User.new(
  name: "Admin User",
  email: "admin@example.com",
  password: "helloworld"
  )
admin.skip_confirmation!
admin.save!

member = User.new(
  name: 'Member',
  email: 'member@example.com',
  password: 'helloworld'
  )
member.skip_confirmation!
member.save!

member = User.new(
  name: 'Ruiquan Wu',
  email: 'ruiquanwu@gmail.com',
  password: 'helloworld'
  )
member.skip_confirmation!
member.save!


users = User.all

20.times do
  Item.create!(
    name: Faker::Lorem.sentence,
    user: users.sample
    )
end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"