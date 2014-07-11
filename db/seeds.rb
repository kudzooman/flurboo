require 'faker'

# Create Users
5.times do 
  user = User.new(
    name:     Faker::Name.name,
    email:    Faker::Internet.email,
    password: Faker::Lorem.characters(10)
    )
  user.save
end
users = User.all 

# Create Topics
15.times do 
  Topic.create(
    title:          Faker::Lorem.word
    )
end
topics = Topic.all

# Create Bookmarks
50.times do
  bookmark = Bookmark.create(
    url:  Faker::Internet.domain_name 
  )
end
bookmarks = Bookmark.all
