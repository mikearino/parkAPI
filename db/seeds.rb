# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
class Seed

  def self.begin
    seed = Seed.new
    seed.generate_location
  end

  def generate_location
    100.times do |i|
      location = Location.create!(
        name: Faker::Address.community,
        place: Faker::Address.state,
        content: Faker::Hipster.sentence
      )
      rand(1..90).times do |i|
        reviews = location.reviews.create!(
          author: Faker::Name.name,
          content_body: Faker::Hipster.sentence,
          rating: Faker::Number.normal
        )
      end
    puts "Location #{i}: name is #{location.name} and content is '#{location.content}'"
    end
  end
end

Seed.begin
