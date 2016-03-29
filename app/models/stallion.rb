class Stallion < ActiveRecord::Base
  belongs_to :user
  has_many :availabilities
  has_many :bookings
  has_many :users, through: :bookings

  mount_uploader :photo, PhotoUploader
end
