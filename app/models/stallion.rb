class Stallion < ActiveRecord::Base
  belongs_to :user
  has_many :availabilities
  has_many :bookings
  # validates :user_id, presence: true
  # has_many :users, through: :bookings

  mount_uploader :photo, PhotoUploader

  # CATEGORIES = ["Rodeo", "Jumping", "Racing", "Working"]
  # BREEDS = ["Belgian Warmblood", "Clydesdale", "Shire Horse",
  #     "Shetland Pony", "Arabian", "Quarterhorse", "Thoroughbred", "Pecheron", "Apaloosa",
  #     "American Paint", "Fjord Horse", "Nokota", "Chilean"]
  # COLOUR = ["black", "brown", "white", "grey", "white"]
  # COUNTRY = ["Belgium","France","The Netherlands", "United Arab Emirates", ]
  SERVICES = ["sperm_only", "stabling", "owner_bed", "shooting", "malt_whisky"]


def self.ratings
  interim = Stallion.all
  ratingslist = interim.map do |f|
    f.average_rating
  end
  ratingslist.uniq
end

def self.countries
  interim = Stallion.all
  contrieslist = interim.map do |f|
    f.country
  end
  contrieslist.uniq
end

def self.breeds
interim = Stallion.all
  breedslist = interim.map do |f|
    f.breed
  end
  breedslist.uniq
end

def self.categories
interim = Stallion.all
  categorieslist = interim.map do |f|
    f.category
  end
  categorieslist.uniq
end

end

