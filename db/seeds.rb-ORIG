# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

################# USERS #################

User.destroy_all 

user1 = User.create(
  email: "jane@doe.com", password: "pw1234"
)

user2 = User.create(
  :email => "john@doe.com", :password => "pw1234"
)


################# POSTS #################

Post.destroy_all 

10.times do
  Post.create(
    title: Faker::Lorem.sentence(word_count: 3),
    body: Faker::Lorem.paragraph(sentence_count: 3),
    user: user1
  )
end

10.times do
  Post.create(
    title: Faker::Lorem.sentence(word_count: 3),
    body: Faker::Lorem.paragraph(sentence_count: 3),
    user: user2
  )
end

