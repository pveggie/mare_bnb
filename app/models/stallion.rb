class Stallion < ActiveRecord::Base
  belongs_to :user
  has_many :availabilities
  has_many :bookings
  has_many :users, through: :bookings

  mount_uploader :photo, PhotoUploader

  CATEGORIES = ["Rodeo", "Jumping", "Racing", "Working"]
  BREEDS = ["Belgian Warmblood", "Clydesdale", "Shire Horse",
      "Shetland Pony", "Arabian", "Quarterhorse", "Thoroughbred", "Pecheron", "Apaloosa",
      "American Paint", "Fjord Horse", "Nokota", "Chilean"]
end
