10.times do
  User.create!(
  email: Faker::Internet.email,
  password: Faker::Internet.password,
  )
end

users = User.all

50.times do
  Wiki.create!(
  title: Faker::Lorem.sentence,
  body: Faker::Lorem.paragraph,
  user: users.sample,
  private: false
  )
end

User.create!(
  email: 'admin@admin.com',
  password: 'helloworld',
  role: 'admin',
)

User.create!(
  email: 'standard@standard.com',
  password: 'helloworld',
  role: 'standard',
)

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Wiki.count} wikis created"
