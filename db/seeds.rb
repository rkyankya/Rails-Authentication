# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |n|
  name = Faker::Name.name
  email = "foo#{n + 1}@bar.com"
  password = 'foobar'
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password)
end

Post.create!(body: "Hey guys, did you see that Gina doesn't wash their hair. Is so rude and it smells so bad!",
  user_id: 2)
Post.create!(body: "I heard that Felipe doesn't care for gluten! He need to watch out",
  user_id: 4)
Post.create!(body: "Melissa talks behind everyones back. Carefull, she is a snake",
  user_id: 6)
Post.create!(body: "Sam thinks he is better than everybody else, can you imagine he even rejected me.",
  user_id: 8)
Post.create!(body: "The guys in the band class are really out of fashion. Those need to take some classes and learn a little bit before trying something new again.",
  user_id: 5)