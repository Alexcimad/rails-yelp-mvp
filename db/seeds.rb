# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CATEGORY_LIST = ["Chinese", "Italian", "Japanese", "French", "Belgian"]

Restaurant.destroy_all
Review.destroy_all
5.times do 
  Restaurant.create({name: Faker::Restaurant.name,address: Faker::Address.street_address, category: CATEGORY_LIST.sample})
end

Restaurant.all.each do |restaurant|
  10.times do
    restaurant.reviews << Review.new({content: Faker::Quotes::Shakespeare.as_you_like_it_quote, rating: (0..5).to_a.sample })
  end
end
