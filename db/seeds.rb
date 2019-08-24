class Seed

  def self.begin
    seed = Seed.new
    seed.generate_location
  end

  def generate_location
    10.times do |i|
      location = Location.create!(
        name: Faker::Address.community,
        place: Faker::Address.state,
        content: Faker::Hipster.sentence
      )
      rand(1..10).times do |i|
        reviews = location.reviews.create!(
          author: Faker::Name.name,
          content_body: Faker::Hipster.sentence,
          rating: Faker::Number.within(range: 1..10)
        )
      end
      puts "Location #{i}: name is #{location.name} and content is '#{location.content}'"
    end
  end
end

Seed.begin
