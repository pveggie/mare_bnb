class Stallion < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  has_many :availabilities
  has_many :bookings
  has_many :users, through: :bookings
end
