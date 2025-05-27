namespace :posts do
  desc "seed Posts"
  task seed_posts: :environment do
        
    ################# USERS #################
    User.destroy_all 
    user1 = User.create(
      email: "jsnow@test.com", password: "password"
    )
    user2 = User.create(
      :email => "jane@doe.com", :password => "password"
    )

    ################# POSTS #################
    Post.destroy_all 

    # 10.times do |i|
    #   post = Post.create(
    #     title: Faker::Lorem.sentence(word_count: 3),
    #     body: Faker::Lorem.paragraph(sentence_count: 3),
    #     user: user1
    #   )
    #   post.image.attach(io: File.open(Rails.root.join("db", "images", "properties", "property_#{i + 1}.png")), filename: post.title )
    # end

    10.times do |i|
      post = Post.create(
        title: Faker::Lorem.sentence(word_count: 3),
        body: Faker::Lorem.paragraph(sentence_count: 3),
        user: user2
      )
      post.image.attach(io: File.open(Rails.root.join("db", "images", "rpg-fantasy-avatars", "PNG", "without-bg", "#{i + 1}.png")), filename: post.title )
    end

    # 100.times do
    #   Post.create(
    #     title: Faker::Lorem.sentence(word_count: 3),
    #     body: Faker::Lorem.paragraph(sentence_count: 3),
    #     user: user2
    #   )
    # end


  end
end
