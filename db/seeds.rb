Booking.destroy_all
Planet.destroy_all
User.destroy_all

require 'open-uri'
require 'json'

url = "https://api.le-systeme-solaire.net/rest/bodies/"
puts url
planet_serialized = URI.open(url).read
planets = JSON.parse(planet_serialized)

user_one = User.create!(
  email: "rena@cosmos.fr",
  first_name: "Miss Rena",
  last_name: "Fantastic",
  password: "123456"
)

user_two = User.create!(
  email: "camille@cosmos.fr",
  first_name: "Miss Camille",
  last_name: "Invisible",
  password: "123457"
)

user_three = User.create!(
  email: "lydia@cosmos.fr",
  first_name: "Miss Lydia",
  last_name: "Torch",
  password: "123458"
)

user_four = User.create!(
  email: "elena@cosmos.fr",
  first_name: "Miss Elena",
  last_name: "Thing",
  password: "123459"
)

fantastic_four = [user_one, user_two, user_three, user_four]

planets["bodies"].first(40).each do |planet|
  puts "creating planets"
  cosmic_objects = Planet.new(
    name: planet["englishName"],
    object: planet["bodyType"],
    orbital_period: planet["sideralOrbit"],
    radius: planet["meanRadius"],
    around_planet: planet["aroundPlanet"],
    moons: planet["moons"],
    surface_area: planet["dimension"],
    price_per_day: rand(100..300),
    discovery_date: planet["discoveryDate"]
  )
  cosmic_objects.user = fantastic_four.sample
  cosmic_objects.save!
  puts "done"
end
