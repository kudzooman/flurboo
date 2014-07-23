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
   topic = Topic.create(
    title:          Faker::Lorem.word
    )
  5.times do
    bookmark = Bookmark.create(
      url:  Faker::Internet.url,
      topic: topic
    )
  end
end

# topics = Topic.all

# # Create Bookmarks
# bookmarks = Bookmark.all
