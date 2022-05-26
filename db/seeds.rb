Booking.destroy_all
Planet.destroy_all
User.destroy_all

require 'open-uri'
require 'json'


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

user_five = User.create!(
  email: "gamora@cosmos.fr",
  first_name: "Gamora",
  last_name: "Thing",
  password: "123450"
)

fantastic_four = [user_one, user_two, user_three, user_four, user_five]

# url = "https://api.le-systeme-solaire.net/rest/bodies/"
# puts url
# planet_serialized = URI.open(url).read
# planets = JSON.parse(planet_serialized)

# planets["bodies"].first(40).each do |planet|
#   puts "creating planets"
#   cosmic_objects = Planet.new(
#     name: planet["englishName"],
#     object: planet["bodyType"],
#     orbital_period: planet["sideralOrbit"],
#     radius: planet["meanRadius"],
#     around_planet: planet["aroundPlanet"],
#     moons: planet["moons"],
#     surface_area: planet["dimension"],
#     price_per_day: rand(100..300),
#     discovery_date: planet["discoveryDate"]
#   )
#   cosmic_objects.user = fantastic_four.sample
#   cosmic_objects.save!
#   puts "done"
# end

planet_one = Planet.new(
  name: "Mars",
  object: "Planet",
  orbital_period: "686.9",
  radius: "3389.5 ± 0.2",
  moons: "Deïmos, Phobos",
  price_per_day: rand(100..300),
  discovery_date: "12/08/1877",
  discovered_by: "Asaph Hall",
  temperature: rand(-300..100),
  description: "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, being larger than only Mercury. In English, Mars carries the name of the Roman god of war. Mars is a terrestrial planet with a thin atmosphere, and has a crust primarily composed of elements similar to Earth's crust, as well as a core made of iron and nickel. Mars has surface features such as impact craters, valleys, dunes, and polar ice caps. It also has two small and irregularly shaped moons, Phobos and Deimos."
)
planet_one.user = fantastic_four.sample
url_one = URI.open("https://res.cloudinary.com/dsc1uchot/image/upload/v1653561202/production/mars_ketmrx.jpg")
planet_one.photo.attach(io: url_one, filename: "nes.png", content_type: "image/png")
planet_one.save!

planet_two = Planet.new(
  name: "Neptune",
  object: "Planet",
  orbital_period: "367.5",
  radius: "24,622±19",
  moons: "Proteus, Larissa, Galatea, Despina",
  price_per_day: rand(100..300),
  discovery_date: "23/09/1846",
  discovered_by: "Urbain Le Verrier, John Couch Adams, Johann Galle",
  temperature: rand(-300..100),
  description: "Neptune is the eighth and farthest-known Solar planet from the Sun. In the Solar System, it is the fourth-largest planet by diameter, the third-most-massive planet, and the densest giant planet. It is 17 times the mass of Earth, and slightly more massive than its near-twin Uranus. Neptune is denser and physically smaller than Uranus because its greater mass causes more gravitational compression of its atmosphere. It is referred to as one of the solar system's two ice giant planets (the other one being its Uranus)."
)
planet_two.user = fantastic_four.sample
url_two = URI.open("https://res.cloudinary.com/dsc1uchot/image/upload/v1653573671/production/Neptune_-_Voyager_2__29347980845__flatten_crop_qrhudx.jpg")
planet_two.photo.attach(io: url_two, filename: "nes.png", content_type: "image/png")
planet_two.save!

planet_three = Planet.new(
  name: "Earth",
  object: "Planet",
  orbital_period: "365.2",
  radius: "6371.0",
  moons: "Moon",
  price_per_day: rand(100..300),
  discovery_date: "Billions and billions of years ago",
  discovered_by: "No one really knows",
  temperature: rand(-300..100),
  description: "Earth is the third planet from the Sun and the only astronomical object known to harbor life. While large volumes of water can be found throughout the Solar System, only Earth sustains liquid surface water. About 71% of Earth's surface is made up of the ocean, dwarfing Earth's polar ice, lakes, and rivers. The remaining 29% of Earth's surface is land, consisting of continents and islands. Earth's surface layer is formed of several slowly moving tectonic plates, interacting to produce mountain ranges, volcanoes, and earthquakes. Earth's liquid outer core generates the magnetic field that shapes Earth's magnetosphere, deflecting destructive solar winds."
)
planet_three.user = fantastic_four.sample
url_three = URI.open("https://res.cloudinary.com/dsc1uchot/image/upload/v1653575127/production/The_Blue_Marble__remastered_hbdyiu.jpg")
planet_three.photo.attach(io: url_three, filename: "nes.png", content_type: "image/png")
planet_three.save!

planet_four = Planet.new(
  name: "Sun",
  object: "Star",
  orbital_period: "365.2",
  radius: "695,700",
  moons: "None",
  price_per_day: rand(100..300),
  discovery_date: "Billions and billions of years ago",
  discovered_by: "No one really knows",
  temperature: rand(-300..100),
  description: "The Sun is the star at the center of the Solar System. It is a nearly perfect ball of hot plasma,[18][19] heated to incandescence by nuclear fusion reactions in its core, radiating the energy mainly as visible light, ultraviolet, and infrared radiation. It is the most important source of energy for life on Earth."
)
planet_four.user = fantastic_four.sample
url_four = URI.open("https://res.cloudinary.com/dsc1uchot/image/upload/v1653576284/production/The_Sun_in_white_light_vokdky.jpg")
planet_four.photo.attach(io: url_four, filename: "nes.png", content_type: "image/png")
planet_four.save!
