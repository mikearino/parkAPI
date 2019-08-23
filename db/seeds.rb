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
    20.times do |i|
      location = Location.create!(
        name: Faker::GreekPhilosophers.name,
        place: Faker::Address.street_address,
        content: Faker::Hipster.paragraph
      )
    end
      puts "Location #{i}: name is #{location.name} and content is '#{location.content}'"
    end
  end


Seed.begin
