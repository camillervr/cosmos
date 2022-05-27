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
#     rating: rand(4.0..5.0).round(1),
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
  rating: rand(4.0..5.0).round(1),
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
  rating: rand(4.0..5.0).round(1),
  description: "Neptune is the eighth and farthest-known Solar planet from the Sun. In the Solar System, it is the fourth-largest planet by diameter, the third-most-massive planet, and the densest giant planet. It is 17 times the mass of Earth, and slightly more massive than its near-twin Uranus. Neptune is denser and physically smaller than Uranus because its greater mass causes more gravitational compression of its atmosphere. It is referred to as one of the solar system's two ice giant planets (the other one being its Uranus)."
)
planet_two.user = fantastic_four.sample
url_two = URI.open("https://res.cloudinary.com/dsc1uchot/image/upload/v1653644587/production/5-infos-insolites-a-connaitre-sur-neptune_xac4xm.jpg")
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
  rating: rand(4.0..5.0).round(1),
  description: "Earth is the third planet from the Sun and the only astronomical object known to harbor life. While large volumes of water can be found throughout the Solar System, only Earth sustains liquid surface water. About 71% of Earth's surface is made up of the ocean, dwarfing Earth's polar ice, lakes, and rivers. The remaining 29% of Earth's surface is land, consisting of continents and islands. Earth's surface layer is formed of several slowly moving tectonic plates, interacting to produce mountain ranges, volcanoes, and earthquakes. Earth's liquid outer core generates the magnetic field that shapes Earth's magnetosphere, deflecting destructive solar winds."
)
planet_three.user = fantastic_four.sample
url_three = URI.open("https://res.cloudinary.com/dsc1uchot/image/upload/v1653644264/production/earth-1617121-1280_mf0j3x.jpg")
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
  rating: rand(4.0..5.0).round(1),
  description: "The Sun is the star at the center of the Solar System. It is a nearly perfect ball of hot plasma, heated to incandescence by nuclear fusion reactions in its core, radiating the energy mainly as visible light, ultraviolet, and infrared radiation. It is the most important source of energy for life on Earth."
)
planet_four.user = fantastic_four.sample
url_four = URI.open("https://res.cloudinary.com/dsc1uchot/image/upload/v1653644703/production/2020_12_largeimg_742770389_s9n37g.jpg")
planet_four.photo.attach(io: url_four, filename: "nes.png", content_type: "image/png")
planet_four.save!

planet_five = Planet.new(
  name: "Vega",
  object: "Star",
  orbital_period: "2.42977±0.00016",
  radius: "2.362-2.818",
  moons: "None",
  price_per_day: rand(100..300),
  discovery_date: "17/08/1850",
  discovered_by: "William Bond and John Adams Whipple",
  temperature: rand(-300..100),
  rating: rand(4.0..5.0).round(1),
  description: "Vega is the brightest star in the northern constellation of Lyra. It has the Bayer designation α Lyrae, which is Latinised to Alpha Lyrae and abbreviated Alpha Lyr or α Lyr. This star is relatively close at only 25 light-years (7.7 parsecs) from the Sun, and, together with Arcturus and Sirius, one of the most luminous stars in the Sun's neighborhood. It is the fifth-brightest star in the night sky, and the second-brightest star in the northern celestial hemisphere, after Arcturus."
)
planet_five.user = fantastic_four.sample
url_five = URI.open("https://res.cloudinary.com/dsc1uchot/image/upload/v1653646153/production/seine-et-marne--focus-on-one-of-the-most-beautiful-stars-of-heaven--vega-in-the-constellation-lyra--the-blue-star-is-located-25-light-years-from-earth-and-is-clearly-visible--especially-in-summer--986946952-5c5c625546e0fb00015873fe_xmt9ch.jpg")
planet_five.photo.attach(io: url_five, filename: "nes.png", content_type: "image/png")
planet_five.save!

planet_six = Planet.new(
  name: "Pluto",
  object: "Dwarf Planet",
  orbital_period: "366.7",
  radius: "1,188.3±0.8",
  moons: "Charon, Styx, Nix, Kerberos and Hydra.",
  price_per_day: rand(100..300),
  discovery_date: "18/02/1930",
  discovered_by: "Clyde W. Tombaugh",
  temperature: rand(-300..100),
  rating: rand(4.0..5.0).round(1),
  description: "Pluto is the ninth-largest and tenth-most-massive known object directly orbiting the Sun. It is the largest known trans-Neptunian object by volume but is less massive than Eris. Like other Kuiper belt objects, Pluto is primarily made of ice and rock and is relatively small—one-sixth the mass of the Moon and one-third its volume. It has a moderately eccentric and inclined orbit, ranging from 30 to 49 astronomical units (4.5 to 7.3 billion kilometers; 2.8 to 4.6 billion miles) from the Sun. Therefore, Pluto periodically comes closer to the Sun than Neptune. Still, a stable orbital resonance with Neptune prevents them from colliding. As a result, light from the Sun takes 5.5 hours to reach Pluto at its average distance (39.5 AU [5.91 billion km; 3.67 billion mi])."
)
planet_six.user = fantastic_four.sample
url_six = URI.open("https://res.cloudinary.com/dsc1uchot/image/upload/v1653646442/production/download_nq0jae.jpg")
planet_six.photo.attach(io: url_six, filename: "nes.png", content_type: "image/png")
planet_six.save!

planet_seven = Planet.new(
  name: "Ceres",
  object: "Asteroid",
  orbital_period: "467",
  radius: "469.7",
  moons: "None",
  price_per_day: rand(100..300),
  discovery_date: "01/01/1801",
  discovered_by: "Giuseppe Piazzi",
  temperature: "168",
  rating: rand(4.0..5.0).round(1),
  description: "Ceres was the first asteroid discovered, on 1 January 1801 by Giuseppe Piazzi at Palermo Astronomical Observatory in Sicily. Originally considered a planet, it was reclassified as an asteroid in the 1850s after the discovery of dozens of other objects in similar orbits. In 2006, it was reclassified again as a dwarf planet – the only one always inside Neptune's orbit – because, at 940 km (580 mi) in diameter, it is the only asteroid large enough for its gravity to maintain it as a spheroid in hydrostatic equilibrium."
)
planet_seven.user = fantastic_four.sample
url_seven = URI.open("https://res.cloudinary.com/dsc1uchot/image/upload/v1653646777/production/istockphoto-1211739547-612x612_kx0xoh.jpg")
planet_seven.photo.attach(io: url_seven, filename: "nes.png", content_type: "image/png")
planet_seven.save!

planet_eight = Planet.new(
  name: "Halley's Comet",
  object: "Comet",
  orbital_period: "75.32",
  radius: "n/a",
  moons: "None",
  price_per_day: rand(100..300),
  discovery_date: "1758",
  discovered_by: "Edmond Halley",
  temperature: "−103",
  rating: rand(4.0..5.0).round(1),
  description: "Halley's Comet or Comet Halley, officially designated 1P/Halley,[2] is a short-period comet visible from Earth every 75–76 years. Halley is the only known short-period comet that is regularly visible to the naked eye from Earth, and thus the only naked-eye comet that can appear twice in a human lifetime. Halley last appeared in the inner parts of the Solar System in 1986 and will next appear in mid-2061."
)
planet_eight.user = fantastic_four.sample
url_eight = URI.open("https://res.cloudinary.com/dsc1uchot/image/upload/v1653647153/production/Lspn_comet_halley_jxqprm.jpg")
planet_eight.photo.attach(io: url_eight, filename: "nes.png", content_type: "image/png")
planet_eight.save!

planet_nine = Planet.new(
  name: "Comet Hyakutake",
  object: "Comet",
  orbital_period: "17,000",
  radius: "n/a",
  moons: "None",
  price_per_day: rand(100..300),
  discovery_date: "31/01/1996",
  discovered_by: "Yuji Hyakutake",
  temperature: "−103",
  rating: rand(4.0..5.0).round(1),
  description: "Comet Hyakutake is a comet, discovered on 31 January 1996, that passed very close to Earth in March of that year. It was dubbed the Great Comet of 1996; its passage near the Earth was one of the closest cometary approaches of the previous 200 years. Hyakutake appeared very bright in the night sky and was widely seen around the world. The comet temporarily upstaged the much anticipated Comet Hale–Bopp, which was approaching the inner Solar System at the time."
)
planet_nine.user = fantastic_four.sample
url_nine = URI.open("https://res.cloudinary.com/dsc1uchot/image/upload/v1653647404/production/burger2_iuhznl.gif")
planet_nine.photo.attach(io: url_nine, filename: "nes.png", content_type: "image/png")
planet_nine.save!

planet_ten = Planet.new(
  name: "Europa",
  object: "Moon",
  orbital_period: "17,000",
  radius: "1,560",
  moons: "None",
  price_per_day: rand(100..300),
  discovery_date: "08/01/1610",
  discovered_by: "Galileo Galilei",
  temperature: "−160",
  rating: rand(4.0..5.0).round(1),
  description: "Europa is the smallest of the four Galilean moons orbiting Jupiter, and the sixth-closest to the planet of all the 80 known moons of Jupiter. It is also the sixth-largest moon in the Solar System. Europa was discovered in 1610 by Galileo Galilei[1] and was named after Europa, the Phoenician mother of King Minos of Crete and lover of Zeus (the Greek equivalent of the Roman god Jupiter)."
)
planet_ten.user = fantastic_four.sample
url_ten = URI.open("https://res.cloudinary.com/dsc1uchot/image/upload/v1653648238/production/download_1_prsdre.jpg")
planet_ten.photo.attach(io: url_ten, filename: "nes.png", content_type: "image/png")
planet_ten.save!

planet_eleven = Planet.new(
  name: "Kepler-10b",
  object: "Planet",
  orbital_period: "90",
  radius: "9,365",
  moons: "None",
  price_per_day: rand(100..300),
  discovery_date: "10/01/2011",
  discovered_by: "Batalha et al.",
  temperature: "1,560",
  rating: rand(4.0..5.0).round(1),
  description: "Kepler-10b is the first confirmed terrestrial planet to have been discovered outside the Solar System by the Kepler Space Telescope. Discovered after several months of data collection during the course of the NASA-directed Kepler Mission, which aims to discover Earth-like planets crossing in front of their host stars, the planet's discovery was announced on January 10, 2011. Kepler-10b has a mass of 3.72±0.42 Earth masses and a radius of 1.47 Earth radii. However, it lies extremely close to its star, Kepler-10, and as a result is too hot to support life as we know it. Its existence was confirmed using measurements from the W.M. Keck Observatory in Hawaii."
)
planet_eleven.user = fantastic_four.sample
url_eleven = URI.open("https://res.cloudinary.com/dsc1uchot/image/upload/v1653648576/production/Kepler10b_artist_nbpfyx.jpg")
planet_eleven.photo.attach(io: url_eleven, filename: "nes.png", content_type: "image/png")
planet_eleven.save!

planet_twelve = Planet.new(
  name: "Gliese 504 b",
  object: "Planet",
  orbital_period: "1,332",
  radius: "0.96±0.07",
  moons: "None",
  price_per_day: rand(100..300),
  discovery_date: "2013",
  discovered_by: "Kuzuhara et al.",
  temperature: "271",
  rating: rand(4.0..5.0).round(1),
  description: "Named GJ 504b, the planet is made of pink gas. It's similar to Jupiter, a giant gas planet in our own solar system. But GJ 504b is four times more massive. At 460°F, it's the temperature of a hot oven, and it's the planet's intense heat that causes it to glow."
)
planet_twelve.user = fantastic_four.sample
url_twelve = URI.open("https://res.cloudinary.com/dsc1uchot/image/upload/v1653649043/production/0A4kLp5izHLzpL0pPbILGiTgez58W0ZJs_DtDFcKnZI_xtypcl.webp")
planet_twelve.photo.attach(io: url_twelve, filename: "nes.png", content_type: "image/png")
planet_twelve.save!
