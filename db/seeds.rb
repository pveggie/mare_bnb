# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Booking.destroy_all
Stallion.destroy_all
Profile.destroy_all
User.destroy_all
user_attributes = [
  {
    email: "pierre@test.com",
    password: "testtest",
    first_name: "Pierre" },

  {
    email: "antoine@test.com",
    password: "testtest",
    first_name: "Antoine" },

  {
    email: "alvaro@test.com",
    password: "testtest",
    first_name: "Alvaro" },

  {
    email: "tomasz@test.com",
    password: "testtest",
    first_name: "Tomasz" }
]

user_attributes.each { |params| User.create!(params) }

# user = User.find_by email: "blah@blah.com"

Stallion.destroy_all
stallions_attributes = [
  {
    name: "Man o War",
    date_of_birth: Date.new(2001,2,3),
    average_rating: "9",
    category: "Working",
    breed: "Belgian Warmblood",
    lineage: "confirmed",
    colour: "black",
    description: "This horse drinks a gallon of blood every day, breathes fire, and is generally an untamable beast.",
    country: "Belgium",
    town: "Kortrijk",
    photo: open("http://res.cloudinary.com/domva0jha/image/upload/v1459435095/ratlcmq36eqgawdbk8tf.png"),
    user_id: (User.all).sample.id,
    sperm_only: true,
    stabling: true,
    owner_bed: true,
    shooting: true,
    malt_whisky: true
  },
  {
    name: "Native Dancer",
    date_of_birth: Date.new(2010,1,3),
    average_rating: "8",
    category: "Working",
    breed: "Clydesdale",
    lineage: "confirmed",
    colour: "brown",
    description: "Dancer is a fine and friendly Clydesdale who is good with children, and at making them.",
    country: "Belgium",
    town: "Ghent",
    photo: open("http://res.cloudinary.com/domva0jha/image/upload/v1459435008/fq5rfrrqxohflrubll0z.jpg"),
    user_id: (User.all).sample.id,
    sperm_only: true,
    stabling: true,
    owner_bed: true,
    shooting: true,
    malt_whisky: true
  },
  {
    name: "Buckpasser",
    date_of_birth: Date.new(2011,11,3),
    average_rating: "7",
    category: "Working",
    breed: "Shire Horse",
    lineage: "confirmed",
    colour: "white",
    description: "Buckpasser really likes to buck and to ****.",
    country: "Belgium",
    town: "Waterloo",
    photo: open("http://res.cloudinary.com/domva0jha/image/upload/v1459434875/tciamqqudtplajfjsm5c.jpg"),
    user_id: (User.all).sample.id,
    sperm_only: true,
    stabling: false,
    owner_bed: true,
    shooting: true,
    malt_whisky: true
  },
  {
    name: "Shared Belief",
    date_of_birth: Date.new(2014,10,7),
    average_rating: "8",
    category: "Racing",
    breed: "Arabian",
    lineage: "confirmed",
    colour: "grey",
    description: "This fine stallion has never lost a race.",
    country: "France",
    town: "Marseille",
    photo: open("http://res.cloudinary.com/domva0jha/image/upload/v1459434789/ppfln1ur6qyvceoiemwf.jpg"),
    user_id: (User.all).sample.id,
    sperm_only: false,
    stabling: true,
    owner_bed: true,
    shooting: false,
    malt_whisky: true
  },
  {
    name: "Whirlaway",
    date_of_birth: Date.new(2013,9,13),
    average_rating: "9",
    category: "Racing",
    breed: "Quarterhorse",
    lineage: "confirmed",
    colour: "black",
    description: "Whirlaway is very focused and not easily blown off course.",
    country: "The Netherlands",
    town: "The Hague",
    photo: open("http://res.cloudinary.com/domva0jha/image/upload/v1459434706/x5rfihiju4rdy888luwk.jpg"),
    user_id: (User.all).sample.id,
    sperm_only: true,
    stabling: true,
    owner_bed: false,
    shooting: true,
    malt_whisky: true
  },
  {
    name: "Genuine Risk",
    date_of_birth: Date.new(2013,6,8),
    average_rating: "10",
    category: "Racing",
    breed: "Thoroughbred",
    lineage: "confirmed",
    colour: "brown",
    description: "This fine race horse is a guaranteed safe bet for all your foaling needs.",
    country: "United Arab Emirates",
    town: "Dubai",
    photo: open("http://res.cloudinary.com/domva0jha/image/upload/v1459434636/vakqb09g8srmr7w5ffoy.jpg"),
    user_id: (User.all).sample.id,
    sperm_only: true,
    stabling: true,
    owner_bed: true,
    shooting: false,
    malt_whisky: true
  },
  {
    name: "Princess Rooney",
    date_of_birth: Date.new(2011,12,24),
    average_rating: "7",
    category: "Jumping",
    breed: "Pecheron",
    lineage: "confirmed",
    colour: "grey",
    description: "Is a stallion.",
    country: "Germany",
    town: "Frankfurt",
    photo: open("http://res.cloudinary.com/domva0jha/image/upload/v1459434547/kh845rhbr5ugq0w5063k.jpg"),
    user_id: (User.all).sample.id,
    sperm_only: false,
    stabling: true,
    owner_bed: true,
    shooting: true,
    malt_whisky: true
  },
  {
    name: "Palace Malice",
    date_of_birth: Date.new(2005,10,20),
    average_rating: "9",
    category: "Jumping",
    breed: "Apaloosa",
    lineage: "confirmed",
    colour: "black",
    description: "A lovely and good-tempered horse who was once owned by royalty.",
    country: "Belgium",
    town: "Luxembourg",
    photo: open("http://res.cloudinary.com/domva0jha/image/upload/v1459434448/hjavjtwrordrtiuzulsj.jpg"),
    user_id: (User.all).sample.id,
    sperm_only: true,
    stabling: true,
    owner_bed: true,
    shooting: false,
    malt_whisky: true
  },
  {
    name: "Wise Dan",
    date_of_birth: Date.new(2005,1,20),
    average_rating: "8",
    category: "Jumping",
    breed: "American Paint",
    lineage: "confirmed",
    colour: "brown",
    description: "He can jump, but don't ask him to do maths.",
    country: "France",
    town: "Paris",
    photo: open("http://res.cloudinary.com/domva0jha/image/upload/v1459434125/ui52ytfzvoeqrmygtae9.jpg"),
    user_id: (User.all).sample.id,
    sperm_only: true,
    stabling: true,
    owner_bed: true,
    shooting: true,
    malt_whisky: true
  },
  {
    name: "Ruffian",
    date_of_birth: Date.new(2005,8,20),
    average_rating: "7",
    category: "Rodeo",
    breed: "Fjord Horse",
    lineage: "confirmed",
    colour: "black",
    description: "A tame and well-behaved beast.",
    country: "Spain",
    town: "Cordoba",
    photo: open("http://res.cloudinary.com/domva0jha/image/upload/v1459434029/yn0rfnexfbf5ttasikfn.jpg"),
    user_id: (User.all).sample.id,
    sperm_only: false,
    stabling: false,
    owner_bed: false,
    shooting: true,
    malt_whisky: true
  },
  {
    name: "Seattle Slew",
    date_of_birth: Date.new(2005,8,15),
    average_rating: "5",
    category: "Rodeo",
    breed: "Nokota",
    lineage: "confirmed",
    colour: "white",
    description: "This horse loves nothing more than to put on a show.",
    country: "Spain",
    town: "Bilbao",
    photo: open("http://res.cloudinary.com/domva0jha/image/upload/v1459433811/pwll7hr36cmxjyw2ex9l.jpg"),
    user_id: (User.all).sample.id,
    sperm_only: true,
    stabling: true,
    owner_bed: true,
    shooting: true,
    malt_whisky: true
  },
  {
    name: "American Pharoah",
    date_of_birth: Date.new(2009,10,25),
    average_rating: "10",
    category: "Rodeo",
    breed: "Chilean",
    lineage: "confirmed",
    colour: "white",
    description: "This stately horse has a proud and steady bearing.",
    country: "United Arab Emirates",
    town: "Abu Dhabi",
    photo: open("http://res.cloudinary.com/domva0jha/image/upload/v1459443261/sd69lfi8wx2ukaspxpq2.jpg"),
    user_id: (User.all).sample.id,
    sperm_only: false,
    stabling: true,
    owner_bed: true,
    shooting: true,
    malt_whisky: true
  }
]
stallions_attributes.each { |params| Stallion.create!(params) }

profile_attributes = [
  {
    user_id: (User.find_by email: "pierre@test.com").id,
    last_name: "Moneybags",
    title: (Profile::TITLES).sample,
    net_worth: 135,
    estate: "Chateau Riche",
    town: "Ghent",
    country: "Belgium",
    photo: open("http://res.cloudinary.com/domva0jha/image/upload/v1459517589/pierre_y0f3qw.jpg"),
    profile_made: true
    },
  {
    user_id: (User.find_by email: "antoine@test.com").id,
    last_name: "Steuerkauf",
    title: (Profile::TITLES).sample,
    net_worth: 12,
    estate: "Goldleafington",
    town: "Aschaffenburg",
    country: "Germany",
    photo: open("http://res.cloudinary.com/domva0jha/image/upload/v1459517584/antoine_igbrlq.jpg"),
    profile_made: true
    },
  {
    user_id: (User.find_by email: "alvaro@test.com").id,
    last_name: "Ganded Lentry",
    title: (Profile::TITLES).sample,
    net_worth: 23,
    estate: "Land of Horses",
    town: "Bavaria",
    country: "Germany",
    photo: open("http://res.cloudinary.com/domva0jha/image/upload/v1459517582/alvaro_j4unrg.png"),
    profile_made: true
    },
  {
    user_id: (User.find_by email: "tomasz@test.com").id,
    last_name: "Uberriche",
    title: (Profile::TITLES).sample,
    net_worth: 12,
    estate: "Uber Estate",
    town: "Cambridge",
    country: "England",
    photo: open("http://res.cloudinary.com/domva0jha/image/upload/v1459517594/tomasz_arwymf.jpg"),
    profile_made: true
  }
]

profile_attributes.each do |params|

  profile = Profile.find(params[:user_id])
  profile.update!(params)

end
