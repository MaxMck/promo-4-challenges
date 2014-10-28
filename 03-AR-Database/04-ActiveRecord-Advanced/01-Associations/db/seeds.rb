require "faker"
5.times do
  username = Faker::Internet.user_name
  email = Faker::Internet.email
  user = User.create(username: username, email: email)
  user.save
  8.times do
    name = Faker::Internet.user_name
    url = Faker::Internet.url
    votes = Faker::Number.digit
    user.posts.create(name: name, url: url, votes: votes)
  end
end
