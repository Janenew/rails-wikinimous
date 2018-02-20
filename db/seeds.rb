# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.destroy_all
puts "Start article seed"
10.times do
  article = Article.new(
    title: Faker::Job.title,
    content:
     "<p>#{Faker::Lorem.paragraph(4)}</p>" +

      "<img src=\"#{Faker::LoremPixel.image("800x300", false, 'city')}\">" +

      "<h2>#{Faker::Job.key_skill}</h2>" +

      "<p>#{Faker::Lorem.paragraph(4)}</p>" +

      "<p>#{Faker::Lorem.paragraph(7)}</p>" +

      "<p>#{Faker::Lorem.paragraph(7)}</p>" +

      "<h2>#{Faker::Job.key_skill}</h2>" +

      "<p>#{Faker::Lorem.paragraph(4)}</p>" +

      "<p>#{Faker::Lorem.paragraph(7)}</p>" +

      "<p>#{Faker::Lorem.paragraph(7)}</p>"
    )
  article.save!
  p article
end

puts "End article seed"


