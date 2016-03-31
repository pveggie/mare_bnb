# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
User.destroy_all
user_attributes = [
  {
    email: "test@test.com",
    password: "testtest",
    first_name: "Sir Gerald" },

  {
    email: "blah2@blah.com",
    password: "12345678",
    first_name: "Colin" },

  {
    email: "blah3@blah.com",
    password: "12345678",
    first_name: "Gogi" },

  {
    email: "blah4@blah.com",
    password: "12345678",
    first_name: "Foz" },

  {
    email: "blah5@blah.com",
    password: "12345678",
    first_name: "Zarrah" },

  {
    email: "blah6@blah.com",
    password: "12345678",
    first_name: "Luis" },

  {
    email: "blah7@blah.com",
    password: "12345678",
    first_name: "Eren" },

  {
    email: "blah8@blah.com",
    password: "12345678",
    first_name: "Danni" },

  {
    email: "blah9@blah.com",
    password: "12345678",
    first_name: "J9" }

]

user_attributes.each { |params| User.create!(params) }

# user = User.find_by email: "blah@blah.com"

Stallion.destroy_all
stallions_attributes = [
  {
    name: "Man o War",
    average_rating: "9",
    category: "Working Horses",
    breed: "Belgian Warmblood",
    lineage: "confirmed",
    colour: "black",
    description: "This horse drinks a gallon of blood every day, breathes fire, and is generally an untamable beast.",
    country: "Belgium",
    town: "Kortrijk",
    image: "Belgian_Warmblood.png",
    user_id: (User.find_by email: "test@test.com").id
  },
  {
    name: "Native Dancer",
    average_rating: "8",
    category: "Working Horses",
    breed: "Clydesdale",
    lineage: "confirmed",
    colour: "brown",
    description: "Dancer is a fine and friendly Clydesdale who is good with children, and at making them.",
    country: "Belgium",
    town: "Ghent",
    image: "Clydesdale.JPG",
    user_id: (User.find_by email: "test@test.com").id,
    sperm_only: true,
    stabling: true,
    owner_bed: true,
    shooting: true,
    malt_whisky: true
  },
  {
    name: "Buckpasser",
    average_rating: "7",
    category: "Working Horses",
    breed: "Shire Horse",
    lineage: "confirmed",
    colour: "white",
    description: "Buckpasser really likes to buck and to ****.",
    country: "Belgium",
    town: "Waterloo",
    image: "Shire.jpg",
    user_id: (User.find_by email: "test@test.com").id,
    sperm_only: true,
    stabling: false,
    owner_bed: true,
    shooting: true,
    malt_whisky: true
  },
  {
    name: "Shared Belief",
    average_rating: "8",
    category: "Race Horses",
    breed: "Arabian",
    lineage: "confirmed",
    colour: "grey",
    description: "This fine stallion has never lost a race.",
    country: "France",
    town: "Marseille",
    image: "Arabian_Horse.jpg",
    user_id: (User.find_by email: "test@test.com").id,
    sperm_only: false,
    stabling: true,
    owner_bed: true,
    shooting: false,
    malt_whisky: true
  },
  {
    name: "Whirlaway",
    average_rating: "9",
    category: "Race Horses",
    breed: "Quarterhorse",
    lineage: "confirmed",
    colour: "black",
    description: "Whirlaway is very focused and not easily blown off course.",
    country: "The Netherlands",
    town: "The Hague",
    image: "Quarterhorse.jpg",
    user_id: (User.find_by email: "test@test.com").id,
    sperm_only: true,
    stabling: true,
    owner_bed: false,
    shooting: true,
    malt_whisky: true
  },
  {
    name: "Genuine Risk",
    average_rating: "10",
    category: "Race Horses",
    breed: "Thoroughbred",
    lineage: "confirmed",
    colour: "brown",
    description: "This fine race horse is a guaranteed safe bet for all your foaling needs.",
    country: "United Arab Emirates",
    town: "Dubai",
    image: "thoroughbred.jpg",
    user_id: (User.find_by email: "test@test.com").id,
    sperm_only: true,
    stabling: true,
    owner_bed: true,
    shooting: false,
    malt_whisky: true
  },
  {
    name: "Princess Rooney",
    average_rating: "7",
    category: Stallion::CATEGORIES.sample,
    breed: "Pecheron",
    lineage: "confirmed",
    colour: "grey",
    description: "Is a stallion.",
    country: "Germany",
    town: "Frankfurt",
    image: "Pecheron.jpg",
    user_id: (User.find_by email: "test@test.com").id,
    sperm_only: false,
    stabling: true,
    owner_bed: true,
    shooting: true,
    malt_whisky: true
  },
  {
    name: "Palace Malice",
    average_rating: "9",
    category: "Jumping Horses",
    breed: "Apaloosa",
    lineage: "confirmed",
    colour: "black",
    description: "A lovely and good-tempered horse who was once owned by royalty.",
    country: "Belgium",
    town: "Luxembourg",
    image: "Apaloosa.jpg",
    user_id: (User.find_by email: "test@test.com").id,
    sperm_only: true,
    stabling: true,
    owner_bed: true,
    shooting: false,
    malt_whisky: true
  },
  {
    name: "Wise Dan",
    average_rating: "8",
    category: "Jumping Horses",
    breed: "American Paint",
    lineage: "confirmed",
    colour: "brown",
    description: "He can jump, but don't ask him to do maths.",
    country: "France",
    town: "Paris",
    image: "American-Paint-Horse.jpg",
    user_id: (User.find_by email: "test@test.com").id,
    sperm_only: true,
    stabling: true,
    owner_bed: true,
    shooting: true,
    malt_whisky: true
  },
  {
    name: "Ruffian",
    average_rating: "7",
    category: "Rodeo Horses",
    breed: "Fjord Horse",
    lineage: "confirmed",
    colour: "black",
    description: "A tame and well-behaved beast.",
    country: "Spain",
    town: "Cordoba",
    image: "flord_horse.jpg",
    user_id: (User.find_by email: "test@test.com").id,
    sperm_only: false,
    stabling: false,
    owner_bed: false,
    shooting: true,
    malt_whisky: true
  },
  {
    name: "Seattle Slew",
    average_rating: "5",
    category: "Rodeo Horses",
    breed: "Nokota",
    lineage: "confirmed",
    colour: "white",
    description: "This horse loves nothing more than to put on a show.",
    country: "Spain",
    town: "Bilbao",
    image: "Nokota.jpg",
    user_id: (User.find_by email: "test@test.com").id,
    sperm_only: true,
    stabling: true,
    owner_bed: true,
    shooting: true,
    malt_whisky: true
  },
  {
    name: "American Pharoah",
    average_rating: "10",
    category: "Rodeo Horses",
    breed: "Chilean",
    lineage: "confirmed",
    colour: "white",
    description: "This stately horse has a proud and steady bearing.",
    country: "United Arab Emirates",
    town: "Abu Dhabi",
    photo: "http://res.cloudinary.com/domva0jha/image/upload/v1459432246/ba4tl2usrcjefphcwxwm.jpg",
    user_id: (User.find_by email: "test@test.com").id,
    sperm_only: false,
    stabling: true,
    owner_bed: true,
    shooting: true,
    malt_whisky: true
  }
]
stallions_attributes.each { |params| Stallion.create!(params) }
