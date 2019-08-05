require 'faker'

User.destroy_all
Gossip.destroy_all
PrivateMessage.destroy_all
Tag.destroy_all
Comment.destroy_all
Like.destroy_all
City.destroy_all
GossipToTag.destroy_all




10.times do
  #create user
  user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence(word_count: 10, supplemental: true), email: Faker::Internet.email, age: rand(18..80))
  #assign city to user
  user.city = City.create(name: Faker::Address.city, zip_code: Faker::Address.zip)
  #create gossip
  gossip1 = Gossip.create(title: Faker::Game.title, content: Faker::Lorem.sentence(word_count: 120, supplemental: true))
  gossip2 = Gossip.create(title: Faker::Game.title, content: Faker::Lorem.sentence(word_count: 120, supplemental: true))
 #assign gossips to user
  user.gossips << gossip1
  user.gossips << gossip2
  #create tags
  tag = Tag.create(title: "##{Faker::Verb.base}")
  tag.save
  #assign tags to user
  gossip1.tags << tag
  gossip2.tags << tag
  #create comments
  comment1 = Comment.new(gossip_id: gossip1.id, content: Faker::Lorem.sentence(word_count: 10, supplemental: true))
  comment2 = Comment.new(gossip_id: gossip2.id - 1, content: Faker::Lorem.sentence(word_count: 10, supplemental: true))
  #assign comments to user
  user.comments << comment1
  user.comments << comment2
  
  #like randomly comment1 or comment2
  if rand(0..1) == 0
  like1 = Like.create(user_id: user.id, gossip_id: gossip1.id) #like gossip
  else
  like1 = Like.create(user_id: user.id, comment_id: comment1.id) #like comment
  end

    #like randomly gossip1 or gossip2
  if rand(0..1) == 0
    like1 = Like.create(user_id: user.id, gossip_id: gossip2.id) #like gossip
    else
    like1 = Like.create(user_id: user.id, comment_id: comment2.id) #like comment
    end
  
  user.save

  #create private message from current user to previous user
PrivateMessage.create(recipient_id: user.id - 1, sender_id: user.id, content: Faker::Lorem.sentence(word_count: 20, supplemental: true ))
end
puts "10 users created"
puts "10 cities created"
puts "20 gossips created"
puts "10 tags created"
puts "10 private messages created"
puts "20 comments created"
puts "20 random likes created"
puts "All values has been created!"
