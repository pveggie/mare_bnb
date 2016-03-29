class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :bookings
  has_many :stallions, through: :bookings

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
