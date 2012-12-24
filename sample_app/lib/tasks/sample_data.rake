namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
      admin=User.create!(name: "priya",
                 email: "priya@gmail.com",
                 password: "22222222",
                 password_confirmation: "22222222")
    admin.toggle!(:admin)
    users = User.all(limit: 6)
    50.times do 
      content = Faker::Lorem.sentence(5)
      users.each { |user| user.microposts.create!(content: content) }
    end
  end
end
