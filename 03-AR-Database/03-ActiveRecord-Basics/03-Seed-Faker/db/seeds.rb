require "faker"
100.times do
  name = Faker::Internet.user_name
  url = Faker::Internet.url
  votes = Faker::Number.digit
  p = Post.create(name: name, url: url, votes: votes)
  p.save
end