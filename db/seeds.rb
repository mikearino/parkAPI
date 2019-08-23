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
    seed.generate_locations
  end

  def generate_locations
    20.times do |i|
      location = Location.create!(
        name: Faker::Address.community,
        place: Faker::Address.state,
        content: Faker::Movie.quote
      )
    puts "Location #{i}: name is #{location.name} and content is '#{location.content}'"
    end
  end
end

Seed.begin
