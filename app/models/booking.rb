class Booking < ActiveRecord::Base
  belongs_to :stallion
  belongs_to :user

  has_many :availabilities, through: :stallion


end
